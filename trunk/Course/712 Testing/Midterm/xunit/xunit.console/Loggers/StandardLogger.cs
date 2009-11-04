using System;

namespace Xunit.ConsoleClient
{
    public class StandardLogger : IRunnerLogger
    {
        public void AssemblyFinished(string assemblyFilename, int total, int failed, int skipped, double time)
        {
        }

        public void AssemblyStart(string assemblyFilename, string configFilename, string xUnitVersion)
        {
        }

        public bool ClassFailed(string className, string exceptionType, string message, string stackTrace)
        {
            Console.Write("!");
            return true;
        }

        public void ExceptionThrown(string assemblyFilename, Exception exception)
        {
            throw new System.NotImplementedException();
        }

        public void TestFailed(string name, string type, string method, double duration, string output, string exceptionType, string message, string stackTrace)
        {
            Console.Write("F");
        }

        public bool TestFinished(string name, string type, string method)
        {
            return true;
        }

        public void TestPassed(string name, string type, string method, double duration, string output)
        {
            Console.Write(".");
        }

        public void TestSkipped(string name, string type, string method, string reason)
        {
            Console.Write("S");
        }

        public bool TestStart(string name, string type, string method)
        {
            return true;
        }
    }
}