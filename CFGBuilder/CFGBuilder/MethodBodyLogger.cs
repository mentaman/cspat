using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Cci;
using Microsoft.Cci.ILToCodeModel;
using Microsoft.Cci.MutableCodeModel;

namespace CFGBuilder
{
    public class MethodBodyLogger
    {
        private IMethodDefinition methodDefinition;
        private ISourceMethodBody sourceMethodBody;

        public MethodBodyLogger(IMethodDefinition methodDefinition, ISourceMethodBody sourceMethodBody)
        {
            this.methodDefinition = methodDefinition;
            this.sourceMethodBody = sourceMethodBody;
        }

        public void LogMethodBody()
        {
            sb = new StringBuilder();
            Log("logging function " + methodDefinition.Name.Value);
            var statements = sourceMethodBody.Block.Statements;
            LogStatements(statements);
            if (writeToFile)
            {
                using (var file = new StreamWriter("d://out.txt", true))
                {
                    file.WriteLine(sb.ToString());
                }
            }
        }

        private static void LogStatements(IEnumerable<IStatement> statements)
        {
            Log("sourceMethodBody.Block.Statements.Count(): " + statements.Count());
            foreach (var statement in statements)
            {
                LogStatement(statement);
                Log("================");
                Log("");
            }
            
        }

        public static void LogStatement(IStatement statement)
        {
            bool isBlock = (statement is BasicBlock);
            Log("Statement Type: " + statement.GetType() + ",is basic block?: " + isBlock);

            LogBlock(statement as BasicBlock);

            LogSource(statement);

            LogExpressionStatement(statement);

            LogIfStatement(statement);

            LogSwitchStatement(statement);

            LogGotoStatement(statement);

            LogLabeledStatement(statement);

            LogTryCatchStatement(statement);

            LogForStatement(statement);

            Log("");
        }

        private static void LogForStatement(IStatement statement)
        {
            if (statement is ForStatement)
            {
                var forStatement = statement as ForStatement;
                Log("For statement: " + forStatement.GetType());
                Log("{");
                Log("Condition: ");
                LogExpression(forStatement.Condition);
                LogStatement(forStatement.Body);
                Log("}");
            }
        }

        private static void LogExpressionStatement(IStatement statement)
        {
            if (statement is ExpressionStatement)
            {
                var expressionStatement = statement as ExpressionStatement;
                Log("ExpressionType: " + expressionStatement.Expression.GetType());
            }
        }

        private static void LogSource(IStatement statement)
        {
//            statement.Locations.ToList().ForEach(x => Log("statement source: " + ((ISourceLocation) x).Source));
        }

        private static void LogTryCatchStatement(IStatement statement)
        {
            if (statement is TryCatchFinallyStatement)
            {
                var tryCatchFinallyStatement = statement as TryCatchFinallyStatement;
                var body = tryCatchFinallyStatement.TryBody;
                Log("try block statements: " + body.Statements.Count());
                Log("{");
                body.Statements.ToList().ForEach(LogStatement);
                Log("}");
                Log("Catch Clauses: ");
                Log("{");
                tryCatchFinallyStatement.CatchClauses.ToList().ForEach(x =>
                                                                           {
                                                                               Log("ExceptionContainer: " +
                                                                                   x.ExceptionContainer.Type + ": " +
                                                                                   x.ExceptionContainer.Name);
                                                                               Log("ExceptionType: " +
                                                                                   x.ExceptionType.GetType());
                                                                               Log("Exception Body Statements: " +
                                                                                   x.Body.Statements.Count());
                                                                               x.Body.Statements.ToList().ForEach(
                                                                                   LogStatement);
                                                                           }
                    );
                Log("}");
                Log("finally block statements: " + tryCatchFinallyStatement.FinallyBody.Statements.Count());
                Log("{");
                tryCatchFinallyStatement.FinallyBody.Statements.ToList().ForEach(LogStatement);
                Log("}");
            }
        }

        private static void LogSwitchStatement(IStatement statement)
        {
            if (statement is SwitchStatement)
            {
                var switchStatement = statement as SwitchStatement;
                var expression = switchStatement.Expression;
                Log("switch statement expression: " + expression.GetType());
                if (expression is BinaryOperation)
                {
                    var operation = expression as BinaryOperation;
                    Log("operation.LeftOperand: " + operation.LeftOperand);
                    LogExpression(operation.LeftOperand);
                    Log("operation.LeftOperand: " + operation.RightOperand);
                    LogExpression(operation.RightOperand);
                }
                foreach (var switchCase in switchStatement.Cases)
                {
                    Log("switchCase.Expression: " + switchCase.Expression.Value);
                    Log("{");
                    switchCase.Body.ToList().ForEach(LogStatement);
                    Log("}");
                }
            }
        }

        private static void LogExpression(IExpression expression)
        {
            if (expression is IBoundExpression)
            {
                var boundExpression = expression as IBoundExpression;
                Log("boundExpression.Definition: " + boundExpression.Definition);
                var instance = boundExpression.Instance;
                if (instance != null)
                {
                    Log("boundExpression.Instance: " + instance.GetType());
                    LogExpression(instance);
                }
            }

            if (expression is CompileTimeConstant)
            {
                var constant = expression as CompileTimeConstant;
                Log("constant.value: " + constant.Value);
            }
        }

        private static void LogIfStatement(IStatement statement)
        {
            if (statement is ConditionalStatement)
            {
                var conditionalStatement = statement as ConditionalStatement;
                Log("ConditionalStatement.TrueBranch: " + conditionalStatement.TrueBranch.GetType());
                Log("{");
                Log("TrueBranch: ");
                LogStatement(conditionalStatement.TrueBranch);
//                LogBlock(conditionalStatement.TrueBranch as BasicBlock);
                Log("FalseBranch: ");
                LogStatement(conditionalStatement.FalseBranch);
//                LogBlock(conditionalStatement.FalseBranch as BasicBlock);
                Log("}");
            }
        }

        private static void LogBlock(BlockStatement block)
        {
            if (block == null)
            {
                return;
            }
            Log("{");
            block.Statements.ToList().ForEach(LogStatement);
            Log("}");
        }

        private static void LogLabeledStatement(IStatement statement)
        {
            if (statement is LabeledStatement)
            {
                var labeledStatement = statement as LabeledStatement;

                Log("LabeledStatement.Label: " + labeledStatement.Label.Value);
                LogStatement(labeledStatement.Statement);
            }
        }

        private static void LogGotoStatement(IStatement statement)
        {
            if (statement is GotoStatement)
            {
                var gotoStatement = (GotoStatement) statement;
                Log("GotoStatement.TargetStatement: " + gotoStatement.TargetStatement.Label);
                LogStatement(gotoStatement.TargetStatement);
            }
        }

        private static bool writeToFile = true;
        private static StringBuilder sb = new StringBuilder();
        private static bool logging = true;

        public static void Log(string text)
        {
            if (!logging) return;

            Console.WriteLine(text);
            sb.AppendLine(text);
        }
    }
}