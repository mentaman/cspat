using System;

namespace Xunit.Sdk
{
    /// <summary>
    /// Wraps a command which should fail if it runs longer than the given timeout value.
    /// </summary>
    public class TimeoutCommand : DelegatingTestCommand
    {
        readonly IMethodInfo testMethod;

        /// <summary>
        /// Creates a new instance of the <see cref="TimeoutCommand"/> class.
        /// </summary>
        /// <param name="innerCommand">The command to be run</param>
        /// <param name="timeout">The timout, in milliseconds</param>
        /// <param name="testMethod">The method under test</param>
        public TimeoutCommand(ITestCommand innerCommand, int timeout, IMethodInfo testMethod)
            : base(innerCommand)
        {
            Timeout = timeout;

            this.testMethod = testMethod;
        }

        /// <summary>
        /// Gets the timeout value, in milliseconds.
        /// </summary>
        public int Timeout { get; private set; }

        /// <summary>
        /// Executes the test method, failing if it takes too long.
        /// </summary>
        /// <returns>Returns information about the test run</returns>
        public override MethodResult Execute(object testClass)
        {
            WorkerThreadHandler timedMethod = () => { return InnerCommand.Execute(testClass); };

            IAsyncResult asyncResult = timedMethod.BeginInvoke(null, null);
            MethodResult methodResult;

            if (!asyncResult.AsyncWaitHandle.WaitOne(Timeout, false))
                methodResult = new FailedResult(testMethod, new TimeoutException(Timeout), DisplayName);
            else
                methodResult = timedMethod.EndInvoke(asyncResult);

            return methodResult;
        }

        delegate MethodResult WorkerThreadHandler();
    }
}