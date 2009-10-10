using System.Collections.Generic;

namespace Xunit.Sdk
{
    /// <summary>
    /// Factory for creating <see cref="ITestCommand"/> objects.
    /// </summary>
    public static class TestCommandFactory
    {
        /// <summary>
        /// Make instances of <see cref="ITestCommand"/> objects for the given class and method.
        /// </summary>
        /// <param name="classCommand">The class command</param>
        /// <param name="method">The method under test</param>
        /// <returns>The set of <see cref="ITestCommand"/> objects</returns>
        public static IEnumerable<ITestCommand> Make(ITestClassCommand classCommand,
                                                     IMethodInfo method)
        {
            foreach (ITestCommand command in classCommand.EnumerateTestCommands(method))
            {
                ITestCommand wrappedCommand = new BeforeAfterCommand(command, method.MethodInfo);

                if (command.ShouldCreateInstance)
                    wrappedCommand = new LifetimeCommand(wrappedCommand, method);

                yield return
                    new ExceptionWrapperCommand(
                        new TraceAssertCommand(
                            new OutputCaptureCommand(
                                new TimedCommand(wrappedCommand)
                            )
                        ), method);
            }
        }
    }
}