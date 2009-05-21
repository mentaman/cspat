using System;
using System.Collections.Generic;
using System.Linq;
using CFGBuilder;
using Microsoft.Cci;
using Microsoft.Cci.ILToCodeModel;
using Microsoft.Cci.MutableCodeModel;
using NUnit.Framework;

namespace CFGBuilderTest
{
    [TestFixture]
    public class MethodCFGBuilderTest
    {
        private List<IStatement> statements;

        [SetUp]
        public void Setup()
        {
            statements = new List<IStatement>();
        }

        [Test]
        public void should_create_entry_and_exit_blocks_and_add_corresponding_edges()
        {
            statements.Add(new ExpressionStatement());
            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);
            Assert.AreEqual(3, blocks.Count);
            Assert.IsTrue(blocks[0].IsEntryBlock());
            Assert.IsFalse(blocks[1].IsEntryBlock());
            Assert.IsTrue(blocks[2].IsExitBlock());
            Assert.AreEqual(1, blocks[0].OutgoingEdges.Count);
            Assert.AreEqual(blocks[0], blocks[0].OutgoingEdges[0].FromBlock);
            Assert.AreEqual(blocks[1], blocks[0].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.None, blocks[0].OutgoingEdges[0].Label);
            Assert.AreEqual(1, blocks[1].OutgoingEdges.Count);
            Assert.AreEqual(blocks[1], blocks[1].OutgoingEdges[0].FromBlock);
            Assert.AreEqual(blocks[2], blocks[1].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.None, blocks[1].OutgoingEdges[0].Label);
        }

        [Test]
        public void should_extract_one_basic_blocks_when_there_is_no_conditional_statements()
        {
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());
            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);
            Assert.AreEqual(3, blocks.Count);
            Assert.AreEqual(3, blocks[1].Statements.Count);
        }

        [Test]
        public void should_handle_if_statement_correctly()
        {
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());

            var conditionalStatement = new ConditionalStatement();
            var trueBranch = new BasicBlock(0);
            var trueStatement = new ExpressionStatement();
            trueStatement.Expression = new Assignment();
            trueBranch.Statements.Add(trueStatement);
            conditionalStatement.TrueBranch = trueBranch;

            var falseBranch = new BasicBlock(0);
            var falseStatement = new ExpressionStatement();
            falseStatement.Expression = new MethodCall();
            falseBranch.Statements.Add(falseStatement);
            conditionalStatement.FalseBranch = falseBranch;

            statements.Add(conditionalStatement);
            statements.Add(new ExpressionStatement());

            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);

            Assert.AreEqual(6, blocks.Count);
            Assert.AreEqual(3, blocks[1].Statements.Count);
            Assert.IsTrue(blocks[1].Statements[2] is ConditionalStatement);

            Assert.AreEqual(2, blocks[1].OutgoingEdges.Count);
            Assert.AreEqual(blocks[2], blocks[1].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.True, blocks[1].OutgoingEdges[0].Label);
            Assert.AreEqual(blocks[3], blocks[1].OutgoingEdges[1].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.False, blocks[1].OutgoingEdges[1].Label);

            Assert.AreEqual(1, blocks[2].Statements.Count);
            Assert.AreEqual(blocks[4], blocks[2].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.None, blocks[2].OutgoingEdges[0].Label);
            Assert.IsTrue(((ExpressionStatement) blocks[2].Statements[0]).Expression is Assignment);

            Assert.AreEqual(1, blocks[3].Statements.Count);
            Assert.IsTrue(((ExpressionStatement) blocks[3].Statements[0]).Expression is MethodCall);
            Assert.AreEqual(blocks[4], blocks[3].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.None, blocks[3].OutgoingEdges[0].Label);

            Assert.AreEqual(1, blocks[4].Statements.Count);
        }


        [Test]
        public void should_ignore_empty_else_branch()
        {
            var conditionalStatement = new ConditionalStatement();
            var trueBranch = new BasicBlock(0);
            trueBranch.Statements.Add(new ExpressionStatement());
            conditionalStatement.TrueBranch = trueBranch;
            conditionalStatement.FalseBranch = new EmptyStatement();

            statements.Add(conditionalStatement);

            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);

            Assert.AreEqual(4, blocks.Count);
            Assert.AreEqual(1, blocks[1].Statements.Count);
            Assert.IsTrue(blocks[1].Statements[0] is ConditionalStatement);
            Assert.AreEqual(1, blocks[2].Statements.Count);
        }


        [Test]
        public void should_handle_switch_statement_correctly()
        {
            statements.Add(new ExpressionStatement());

            var switchStatement = new SwitchStatement();
            var case1 = new SwitchCase();
            var caseLabel1 = "case1";
            case1.Body.Add(new GotoStatement() { TargetStatement = new LabeledStatement() { Label = new StubName() { Value = caseLabel1 } } });
            switchStatement.Cases.Add(case1);

            var case2 = new SwitchCase();
            var caseLabel2 = "case2";
            case2.Body.Add(new GotoStatement() { TargetStatement = new LabeledStatement() { Label = new StubName() { Value = caseLabel2 } } });
            switchStatement.Cases.Add(case2);

            statements.Add(switchStatement);
            var afterLabel = "after";

            // switch case body 1
            statements.Add(new LabeledStatement(){Label = new StubName(){Value = caseLabel1}});
            statements.Add(new ExpressionStatement());
            statements.Add(new GotoStatement(){TargetStatement = new LabeledStatement(){Label = new StubName(){Value = afterLabel}}});

            // switch case body 2
            statements.Add(new LabeledStatement() { Label = new StubName() { Value = caseLabel2 } });
            statements.Add(new ExpressionStatement());
            statements.Add(new GotoStatement(){TargetStatement = new LabeledStatement(){Label = new StubName(){Value = afterLabel}}});

            // default case
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());

            // after switch statement 
            statements.Add(new LabeledStatement() { Label = new StubName() { Value = afterLabel } });
            statements.Add(new ExpressionStatement());

            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);

            Assert.AreEqual(7, blocks.Count);
            Assert.AreEqual(2, blocks[1].Statements.Count);
            Assert.IsTrue(blocks[1].Statements[1] is SwitchStatement);
            Assert.AreEqual(2, blocks[1].OutgoingEdges.Count);
            Assert.AreEqual(blocks[2], blocks[1].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(blocks[3], blocks[1].OutgoingEdges[1].ToBlock);
//            Assert.AreEqual(bl);

            // case 1
            Assert.AreEqual(3, blocks[2].Statements.Count);
            Assert.IsTrue(blocks[2].Statements[0] is LabeledStatement);
            Assert.IsTrue(blocks[2].Statements[1] is ExpressionStatement);
            Assert.IsTrue(blocks[2].Statements[2] is GotoStatement);
            Assert.AreEqual(1, blocks[2].OutgoingEdges.Count);
            Assert.AreEqual(blocks[5], blocks[2].OutgoingEdges[0].ToBlock);

            // case 2
            Assert.AreEqual(3, blocks[3].Statements.Count);
            Assert.IsTrue(blocks[3].Statements[0] is LabeledStatement);
            Assert.IsTrue(blocks[3].Statements[1] is ExpressionStatement);
            Assert.IsTrue(blocks[3].Statements[2] is GotoStatement);
            Assert.AreEqual(1, blocks[3].OutgoingEdges.Count);
            Assert.AreEqual(blocks[5], blocks[3].OutgoingEdges[0].ToBlock);

            // default
            Assert.AreEqual(2, blocks[4].Statements.Count);
            Assert.IsTrue(blocks[4].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[4].Statements[1] is ExpressionStatement);
            Assert.AreEqual(1, blocks[4].OutgoingEdges.Count);
            Assert.AreEqual(blocks[5], blocks[4].OutgoingEdges[0].ToBlock);

            // after switch
            Assert.AreEqual(2, blocks[5].Statements.Count);
            Assert.IsTrue(blocks[5].Statements[0] is LabeledStatement);
            Assert.IsTrue(blocks[5].Statements[1] is ExpressionStatement);
        }

        [Test]
        [Ignore]
        public void should_handle_trycatchStatement_correctly()
        {
            statements.Add(new ExpressionStatement());

            var tryCatchFinallyStatement = new TryCatchFinallyStatement();
            statements.Add(tryCatchFinallyStatement);

            // try block
            var tryBlock = new BasicBlock(0);
            tryBlock.Statements.Add(new ExpressionStatement());
            tryCatchFinallyStatement.TryBody = tryBlock;

            // catch clauses
            var catchClause1 = new CatchClause();
            var statements1 = new List<IStatement>();
            statements1.Add(new ExpressionStatement());
            statements1.Add(new ExpressionStatement());
            statements1.Add(new ExpressionStatement());
            catchClause1.Body = new BasicBlock(0) {Statements = statements1};
            var catchClause2 = new CatchClause();
            var statements2 = new List<IStatement>();
            statements2.Add(new ExpressionStatement());
            statements2.Add(new ExpressionStatement());
            catchClause2.Body = new BasicBlock(0) {Statements = statements2};
            tryCatchFinallyStatement.CatchClauses = new List<ICatchClause> {catchClause1, catchClause2};

            // finally block
            var finallyBody = new BasicBlock(0);
            finallyBody.Statements.Add(new ExpressionStatement());
            finallyBody.Statements.Add(new ExpressionStatement());
            finallyBody.Statements.Add(new ExpressionStatement());
            finallyBody.Statements.Add(new ExpressionStatement());
            tryCatchFinallyStatement.FinallyBody = finallyBody;

            statements.Add(new LabeledStatement());
            statements.Add(new GotoStatement());
            statements.Add(new LabeledStatement());
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());
            statements.Add(new ExpressionStatement());

            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);

            Assert.AreEqual(9, blocks.Count);
            Assert.AreEqual(2, blocks[1].Statements.Count);
            Assert.IsTrue(blocks[1].Statements[1] is TryCatchFinallyStatement);
            Assert.AreEqual(1, blocks[2].Statements.Count);
            Assert.AreEqual(3, blocks[3].Statements.Count);
            Assert.AreEqual(2, blocks[4].Statements.Count);
            Assert.AreEqual(4, blocks[5].Statements.Count);
            Assert.AreEqual(2, blocks[6].Statements.Count);
            Assert.AreEqual(5, blocks[7].Statements.Count);
        }

        [Test]
        [Ignore]
        public void should_handle_empty_catch_clauses()
        {
            var tryStatement = new TryCatchFinallyStatement();
            var tryBody = new BasicBlock(0);
            tryBody.Statements.Add(new ExpressionStatement());
            tryStatement.TryBody = tryBody;
            var finallyBody = new BasicBlock(0);
            finallyBody.Statements.Add(new ExpressionStatement());
            tryStatement.CatchClauses = new List<ICatchClause>();
            tryStatement.FinallyBody = finallyBody;
            statements.Add(tryStatement);
            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);
            Assert.AreEqual(5, blocks.Count);
            Assert.IsTrue(blocks[1].Statements[0] is TryCatchFinallyStatement);
            Assert.IsTrue(blocks[2].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[3].Statements[0] is ExpressionStatement);
        }

        [Test]
        public void should_handle_nested_if_statement()
        {
            var conditionalStatement = new ConditionalStatement();
            var trueBranch = new BasicBlock(0);
            trueBranch.Statements.Add(new ExpressionStatement());
            trueBranch.Statements.Add(GetIfElseConditionalStatement());

            conditionalStatement.TrueBranch = trueBranch;
            conditionalStatement.FalseBranch = new EmptyStatement();

            statements.Add(conditionalStatement);

            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);

//            Assert.AreEqual(6, blocks.Count);
            foreach (var block in blocks)
            {
                Console.WriteLine(block);
            }

            Assert.AreEqual(1, blocks[1].Statements.Count);
            Assert.IsTrue(blocks[1].Statements[0] is ConditionalStatement);
            Assert.AreEqual(2,blocks[1].OutgoingEdges.Count);
            Assert.AreEqual(blocks[2], blocks[1].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(blocks[5], blocks[1].OutgoingEdges[1].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.True, blocks[1].OutgoingEdges[0].Label);
            Assert.AreEqual(ControlFlowEdgeLabel.False, blocks[1].OutgoingEdges[1].Label);

            Assert.AreEqual(2, blocks[2].Statements.Count);
            Assert.IsTrue(blocks[2].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[2].Statements[1] is ConditionalStatement);
            Assert.AreEqual(2, blocks[2].OutgoingEdges.Count);
            Assert.AreEqual(blocks[3], blocks[2].OutgoingEdges[0].ToBlock);
            Assert.AreEqual(blocks[4], blocks[2].OutgoingEdges[1].ToBlock);
            Assert.AreEqual(ControlFlowEdgeLabel.True, blocks[2].OutgoingEdges[0].Label);
            Assert.AreEqual(ControlFlowEdgeLabel.False, blocks[2].OutgoingEdges[1].Label);

            Assert.AreEqual(1, blocks[3].Statements.Count);
            Assert.IsTrue(blocks[3].Statements[0] is ExpressionStatement);
            Assert.AreEqual(1, blocks[3].OutgoingEdges.Count);
            Assert.AreEqual(blocks[5], blocks[3].OutgoingEdges[0].ToBlock);

            Assert.AreEqual(1, blocks[4].Statements.Count);
            Assert.IsTrue(blocks[4].Statements[0] is ExpressionStatement);
            Assert.AreEqual(1, blocks[4].OutgoingEdges.Count);
            Assert.AreEqual(blocks[5], blocks[4].OutgoingEdges[0].ToBlock);
        }

        private ConditionalStatement GetIfElseConditionalStatement()
        {
            var ifElseConditionalStatement = new ConditionalStatement();
            var trueBranch = new BasicBlock(0);
            trueBranch.Statements.Add(new ExpressionStatement());
            ifElseConditionalStatement.TrueBranch = trueBranch;
            var falseBranch = new BasicBlock(0);
            falseBranch.Statements.Add(new ExpressionStatement());
            ifElseConditionalStatement.FalseBranch = falseBranch;
            return ifElseConditionalStatement;
        }

        [Test]
        [Ignore]
        public void should_handle_try_catch_statement_with_nested_if_statement()
        {
            var tryStatement = new TryCatchFinallyStatement();
            var tryBody = new BasicBlock(0);
            tryBody.Statements.Add(GetIfElseConditionalStatement());
            tryStatement.TryBody = tryBody;
            var catchBody = new BasicBlock(0);
            catchBody.Statements.Add(new ExpressionStatement());
            tryStatement.CatchClauses = new List<ICatchClause> {new CatchClause() {Body = catchBody}};
            statements.Add(tryStatement);
            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);
            Assert.AreEqual(7, blocks.Count);
            Assert.IsTrue(blocks[1].Statements[0] is TryCatchFinallyStatement);
            Assert.IsTrue(blocks[2].Statements[0] is ConditionalStatement);
            Assert.IsTrue(blocks[3].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[4].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[5].Statements[0] is ExpressionStatement);
        }

        [Test]
        public void should_handle_switch_statement_with_nested_if_statement()
        {
            var switchStatement = new SwitchStatement();
            statements.Add(switchStatement);

            // switch case body 1
            statements.Add(new LabeledStatement());
            statements.Add(GetIfElseConditionalStatement());
            statements.Add(new GotoStatement());

            // switch case body 2
            statements.Add(new LabeledStatement());
            statements.Add(new ExpressionStatement());
            statements.Add(new GotoStatement());

            statements.Add(new LabeledStatement());
            statements.Add(new ExpressionStatement());

            var blocks = MethodCFGBuilder.BuildMethodCFG(null, statements);
            Assert.AreEqual(9, blocks.Count);
            Assert.IsTrue(blocks[1].Statements[0] is SwitchStatement);
            Assert.IsTrue(blocks[2].Statements[0] is LabeledStatement);
            Assert.IsTrue(blocks[2].Statements[1] is ConditionalStatement);
            Assert.IsTrue(blocks[3].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[4].Statements[0] is ExpressionStatement);
            Assert.IsTrue(blocks[5].Statements[0] is GotoStatement);
            Assert.AreEqual(3, blocks[6].Statements.Count);
            Assert.AreEqual(2, blocks[7].Statements.Count);
        }
    }

    public class StubName : IName
    {

        public int UniqueKey
        {
            get { return 1; }
        }

        public int UniqueKeyIgnoringCase
        {
            get { return 1; }
        }

        public string Value { get; set; }
    }
}