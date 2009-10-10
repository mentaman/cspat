using System;
using System.IO;
using System.Diagnostics;

namespace Xunit.Sdk
{
    /// <summary>
    /// Captures standard output and standard error, and inserts the values into the
    /// <see cref="MethodResult"/> as it traverses the chain.
    /// </summary>
    public class OutputCaptureCommand : DelegatingTestCommand
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="OutputCaptureCommand"/> class.
        /// </summary>
        /// <param name="innerCommand">The inner command</param>
        public OutputCaptureCommand(ITestCommand innerCommand) : base(innerCommand) { }

        /// <inheritdoc/>
        public override MethodResult Execute(object testClass)
        {
            StringWriter writer = new StringWriter();

            TextWriter oldOut = Console.Out;
            TextWriter oldError = Console.Error;
            TextWriterTraceListener listener = new TextWriterTraceListener(writer);

            try
            {
                Trace.Listeners.Add(listener);
                Console.SetOut(writer);
                Console.SetError(writer);

                MethodResult result = InnerCommand.Execute(testClass);

                result.Output = writer.ToString();

                return result;
            }
            finally
            {
                Trace.Listeners.Remove(listener);
                Console.SetOut(oldOut);
                Console.SetError(oldError);
            }
        }
    }
}