using System;

namespace Xunit.Sdk
{
    /// <summary>
    /// Wraps any exceptions thrown by the command execution.
    /// </summary>
    public class ExceptionWrapperCommand : DelegatingTestCommand
    {
        readonly IMethodInfo method;

        /// <summary>
        /// Initializes a new instance of the <see cref="ExceptionWrapperCommand"/> class.
        /// </summary>
        /// <param name="innerCommand">The inner command.</param>
        /// <param name="method">The method.</param>
        public ExceptionWrapperCommand(ITestCommand innerCommand, IMethodInfo method)
            : base(innerCommand)
        {
            this.method = method;
        }

        /// <summary>
        /// Executes the test method.
        /// </summary>
        /// <param name="testClass">The instance of the test class</param>
        /// <returns>Returns information about the test run</returns>
        public override MethodResult Execute(object testClass)
        {
            return RunAndCatch(() => { return InnerCommand.Execute(testClass); });
        }

        MethodResult RunAndCatch(ExecutionDelegate @delegate)
        {
            try
            {
                return @delegate.Invoke();
            }
            catch (Exception ex)
            {
                return new FailedResult(method, ex, DisplayName);
            }
        }

        delegate MethodResult ExecutionDelegate();
    }
}