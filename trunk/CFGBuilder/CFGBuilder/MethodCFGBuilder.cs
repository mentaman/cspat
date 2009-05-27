using System.Collections.Generic;
using System.IO;
using System.Linq;
using Microsoft.Cci;
using Microsoft.Cci.Contracts;
using Microsoft.Cci.ILToCodeModel;
using Microsoft.Cci.MutableCodeModel;
using SourceMethodBody=Microsoft.Cci.ILToCodeModel.SourceMethodBody;

namespace CFGBuilder
{
    public class MethodCFGBuilder : CFGBuilderBase
    {
        private readonly IMetadataHost host;
        private readonly ContractProvider contractProvider;
        private readonly PdbReader pdbReader;
        private IList<MethodBodyLogger> methodLoggers = new List<MethodBodyLogger>();
        private IList<MethodCFG> methodCFGs;


        public MethodCFGBuilder(IMetadataHost host, ContractProvider /*?*/ contractProvider, PdbReader /*?*/ pdbReader)
        {
            this.host = host;
            this.contractProvider = contractProvider;
            this.pdbReader = pdbReader;
            var outFilePath = "d://out.txt";
            if (File.Exists(outFilePath))
            {
                File.Delete(outFilePath);
            }
        }

        public override void Visit(IMethodBody methodBody)
        {
            ISourceMethodBody /*?*/ sourceMethodBody = methodBody as ISourceMethodBody ??
                                                       new SourceMethodBody(methodBody, this.host, this.contractProvider,
                                                                            this.pdbReader);

            var logger = new MethodBodyLogger(methodBody.MethodDefinition, sourceMethodBody);
            logger.LogMethodBody();

//            methodCFGs.Add(BuildCFGFor(sourceMethodBody));
            base.Visit(methodBody);
        }

        private MethodCFG BuildCFGFor(ISourceMethodBody body)
        {
            return null;
        }

        public static IList<ControlFlowBasicBlock> BuildMethodCFG(IMethodDefinition methodDefinition,
                                                                  IEnumerable<IStatement> statements)
        {
            var blocks = new List<ControlFlowBasicBlock>();

            var entryBlock = new ControlFlowBasicBlock(methodDefinition, ControlFlowBasicBlock.ENTRY_BLOCK_ID);
            blocks.Add(entryBlock);
            int id = 1;
            var firstBlock = new ControlFlowBasicBlock(methodDefinition, id++);
            CreateControlFlowEdge(entryBlock,firstBlock);
            var gotoMap = new Dictionary<string, List<ControlFlowBasicBlock>>();
            var labelMap = new Dictionary<string, ControlFlowBasicBlock>();

            var lastBlock = ExtractBasicBlocks(methodDefinition, blocks, ref id, statements, firstBlock, gotoMap,
                                                labelMap);

           

            foreach (var key in gotoMap.Keys)
            {
                var gotoBlocks = gotoMap[key];
                foreach (var block in gotoBlocks)
                {
                    var gotoBlock = labelMap[key];
                    CreateControlFlowEdge(block, gotoBlock);
                }
            }

            var exitBlock = new ControlFlowBasicBlock(methodDefinition, ControlFlowBasicBlock.EXIT_BLOCK_ID);
            if (lastBlock.Statements.Count > 0)
            {
                blocks.Add(lastBlock);
                CreateControlFlowEdge(lastBlock, exitBlock);
            }
            else
            {
                foreach (var edge in lastBlock.IncomingEdges)
                {
                    CreateControlFlowEdge(edge.FromBlock,exitBlock,edge.Label);
                    edge.FromBlock.OutgoingEdges.Remove(edge);
                }
            }

           blocks.Add(exitBlock);
            return blocks;
        }

        private static void CreateControlFlowEdge(ControlFlowBasicBlock block, ControlFlowBasicBlock gotoBlock)
        {
            CreateControlFlowEdge(block,gotoBlock,ControlFlowEdgeLabel.None);
        }

        private static void CreateControlFlowEdge(ControlFlowBasicBlock block, ControlFlowBasicBlock gotoBlock, ControlFlowEdgeLabel label)
        {
            var edge = new ControlFlowEdge(block, gotoBlock, label);
            block.OutgoingEdges.Add(edge);
            gotoBlock.IncomingEdges.Add(edge);
        }


        private static ControlFlowBasicBlock ExtractBasicBlocks(IMethodDefinition methodDefinition,
                                                                  List<ControlFlowBasicBlock> blocks, ref int id,
                                                                  IEnumerable<IStatement> statements,
                                                                  ControlFlowBasicBlock currentBlock,
                                                                  Dictionary<string, List<ControlFlowBasicBlock>>
                                                                      gotoMap,
                                                                  Dictionary<string, ControlFlowBasicBlock> labelMap)
        {
            var enumerator = statements.GetEnumerator();
            IStatement lastStatement = null;
            var lastBlocks = new ControlFlowBasicBlock[0];
            while (enumerator.MoveNext())
            {
                var currentStatement = enumerator.Current;
                if (!isConditionalStatement(lastStatement) && currentStatement is LabeledStatement)
                {
                    var newBlock = new ControlFlowBasicBlock(methodDefinition, id++);
                    CreateControlFlowEdge(currentBlock,newBlock);
                    blocks.Add(currentBlock);

                    currentBlock = newBlock;
                }

                currentBlock.Statements.Add(currentStatement);

                if (currentStatement is LabeledStatement)
                {
                    var labeledValue = ((LabeledStatement) currentStatement).Label.Value;
                    labelMap[labeledValue] = currentBlock;
                }

                if (isConditionalStatement(currentStatement))
                {
                    blocks.Add(currentBlock);
                    if (currentStatement is ConditionalStatement)
                    {
                        lastBlocks = ExtractConditionalStatementBlocks(currentStatement as ConditionalStatement, blocks,
                                                                       methodDefinition, ref id, currentBlock, gotoMap,
                                                                       labelMap);
                        currentBlock = lastBlocks[0];
                        continue;
                    }

                    if (currentStatement is GotoStatement)
                    {
                        var gotoStatement = currentStatement as GotoStatement;
                        var labelValue = gotoStatement.TargetStatement.Label.Value;
                        if (!gotoMap.ContainsKey(labelValue))
                        {
                            gotoMap[labelValue] = new List<ControlFlowBasicBlock>();
                        }
                        gotoMap[labelValue].Add(currentBlock);
                    }

                    if (currentStatement is SwitchStatement)
                    {
                        var switchStatement = currentStatement as SwitchStatement;
                        foreach (var switchCase in switchStatement.Cases)
                        {
                            var gotoStatement = (GotoStatement) switchCase.Body.First();
                            var labelValue = gotoStatement.TargetStatement.Label.Value;
                            if (!gotoMap.ContainsKey(labelValue))
                            {
                                gotoMap[labelValue] = new List<ControlFlowBasicBlock>();
                            }
                            gotoMap[labelValue].Add(currentBlock);
                        }
                    }


                    var lastBlock = HandleTryCatchFinallyStatement(currentStatement as TryCatchFinallyStatement, blocks,
                                                                   methodDefinition, ref id, currentBlock, gotoMap,
                                                                   labelMap);

                    currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);
                }

                lastStatement = currentStatement;
            }

            return currentBlock;
        }

        private static bool isConditionalStatement(IStatement statement)
        {
            return statement is ConditionalStatement || statement is SwitchStatement || statement is GotoStatement ||
                   statement is TryCatchFinallyStatement;
        }

        private static ControlFlowBasicBlock HandleTryCatchFinallyStatement(
            TryCatchFinallyStatement tryCatchFinallyStatement, List<ControlFlowBasicBlock> blocks,
            IMethodDefinition methodDefinition, ref int id, ControlFlowBasicBlock currentBlock,
            Dictionary<string, List<ControlFlowBasicBlock>> gotoMap, Dictionary<string, ControlFlowBasicBlock> labelMap)
        {
            if (tryCatchFinallyStatement == null)
            {
                return currentBlock;
            }
            currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);
            ExtractBasicBlocks(methodDefinition, blocks, ref id,
                               tryCatchFinallyStatement.TryBody.Statements, currentBlock, gotoMap,
                               labelMap);

            foreach (var catchClause in tryCatchFinallyStatement.CatchClauses)
            {
                currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);
                ExtractBasicBlocks(methodDefinition, blocks, ref id, catchClause.Body.Statements,
                                   currentBlock, gotoMap, labelMap);
            }
            if (tryCatchFinallyStatement.FinallyBody as BasicBlock != null)
            {
                currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);
                ExtractBasicBlocks(methodDefinition, blocks, ref id,
                                   tryCatchFinallyStatement.FinallyBody.Statements, currentBlock, gotoMap,
                                   labelMap);
            }
            return currentBlock;
        }

        private static ControlFlowBasicBlock[] ExtractConditionalStatementBlocks(
            IConditionalStatement conditionalStatement, List<ControlFlowBasicBlock> blocks,
            IMethodDefinition methodDefinition, ref int id, ControlFlowBasicBlock currentBlock,
            Dictionary<string, List<ControlFlowBasicBlock>> gotoMap, Dictionary<string, ControlFlowBasicBlock> labelMap)
        {
            if (conditionalStatement == null) return new[] {currentBlock};
            var lastBlock = currentBlock;
            var trueBlock = conditionalStatement.TrueBranch as BasicBlock;
            var returnBlocks = new List<ControlFlowBasicBlock>();
            if (trueBlock != null)
            {
                currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);
                CreateControlFlowEdge(lastBlock, currentBlock,ControlFlowEdgeLabel.True);
                var lastTrueBlock = ExtractBasicBlocks(methodDefinition, blocks, ref id, trueBlock.Statements,
                                                 currentBlock,
                                                 gotoMap, labelMap);
                HandleLastBlock(ref id, blocks, lastTrueBlock, returnBlocks);
            }

            var falseBlock = conditionalStatement.FalseBranch as BasicBlock;
            var hasFalseBlock = falseBlock != null && falseBlock.Statements.Count > 0;
            var needAddFalseEdge = true;
            if (hasFalseBlock && !(falseBlock.Statements[0] is EmptyStatement))
            {
                needAddFalseEdge = false;
                currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);
                CreateControlFlowEdge(lastBlock, currentBlock, ControlFlowEdgeLabel.False);
                var lastFalseBlock = ExtractBasicBlocks(methodDefinition, blocks, ref id, falseBlock.Statements,
                                                 currentBlock,
                                                 gotoMap, labelMap);
                HandleLastBlock(ref id,blocks,lastFalseBlock,returnBlocks);
            }
            
            currentBlock = new ControlFlowBasicBlock(methodDefinition, id++);

            if (needAddFalseEdge)
            {
                CreateControlFlowEdge(lastBlock, currentBlock, ControlFlowEdgeLabel.False);
            }

            foreach (var block in returnBlocks)
            {
                CreateControlFlowEdge(block, currentBlock);
            }

            return new[] {currentBlock};
        }

        private static void HandleLastBlock(ref int id, List<ControlFlowBasicBlock> blocks, ControlFlowBasicBlock lastBlock, List<ControlFlowBasicBlock> returnBlocks)
        {
            if (lastBlock.Statements.Count == 0)
            {
                id--;
                foreach (var edge in lastBlock.IncomingEdges)
                {
                    returnBlocks.Add(edge.FromBlock);
                    edge.FromBlock.OutgoingEdges.Remove(edge);
                }
            }
            else
            {
                blocks.Add(lastBlock);
                returnBlocks.Add(lastBlock);
            }
        }
    }
}