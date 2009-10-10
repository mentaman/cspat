using System.Collections.Generic;
using System.Diagnostics;

namespace Xunit.Sdk
{
    /// <summary>
    /// A command wrapper which catches Trace.Assert and Debug.Assert failures and turns
    /// them into assertion exceptions.
    /// </summary>
    public class TraceAssertCommand : DelegatingTestCommand
    {
        /// <summary>
        /// Creates a new instance of the <see cref="TraceAssertCommand"/> class.
        /// </summary>
        /// <param name="innerCommand">The command that will be wrapped.</param>
        public TraceAssertCommand(ITestCommand innerCommand)
            : base(innerCommand) { }

        /// <summary>
        /// Executes the test method.
        /// </summary>
        /// <param name="testClass">The instance of the test class</param>
        /// <returns>Returns information about the test run</returns>
        public override MethodResult Execute(object testClass)
        {
            List<TraceListener> oldListeners = new List<TraceListener>();
            foreach (TraceListener oldListener in Trace.Listeners)
                oldListeners.Add(oldListener);

            Trace.Listeners.Clear();

            TraceListener listener = new AssertTraceListener();
            Trace.Listeners.Add(listener);

            MethodResult result = InnerCommand.Execute(testClass);

            Trace.Listeners.Clear();
            Trace.Listeners.AddRange(oldListeners.ToArray());
            return result;
        }

        class AssertTraceListener : TraceListener
        {
            public override void Fail(string message,
                                      string detailMessage)
            {
                throw new TraceAssertException(message, detailMessage);
            }

            public override void Write(string message) { }

            public override void WriteLine(string message) { }
        }
    }
}