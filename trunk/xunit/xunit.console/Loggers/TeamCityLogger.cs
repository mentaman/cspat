﻿using System;

namespace Xunit.ConsoleClient
{
    public class TeamCityLogger : IRunnerLogger
    {
        public void AssemblyFinished(string assemblyFilename, int total, int failed, int skipped, double time)
        {
            Console.WriteLine("##teamcity[testSuiteFinished name='{0}']", Escape(assemblyFilename));
        }

        public void AssemblyStart(string assemblyFilename, string configFilename, string xUnitVersion)
        {
            Console.WriteLine("##teamcity[testSuiteStarted name='{0}']", Escape(assemblyFilename));
        }

        public bool ClassFailed(string className, string exceptionType, string message, string stackTrace)
        {
            Console.WriteLine("##teamcity[buildStatus status='FAILURE' text='Class failed: {0}: {1}|r|n{2}']",
                              Escape(className), Escape(message), Escape(stackTrace));
            return true;
        }

        public void ExceptionThrown(string assemblyFilename, Exception exception)
        {
            Console.WriteLine(exception.Message);
            Console.WriteLine("While running: {0}", assemblyFilename);
        }

        public void TestFailed(string name, string type, string method, double duration, string output, string exceptionType, string message, string stackTrace)
        {
            Console.WriteLine("##teamcity[testFailed name='{0}' details='{1}|r|n{2}']",
                              Escape(name), Escape(message), Escape(stackTrace));

            WriteOutput(name, output);
            WriteFinished(name, duration);
        }

        public bool TestFinished(string name, string type, string method)
        {
            return true;
        }

        public void TestPassed(string name, string type, string method, double duration, string output)
        {
            WriteOutput(name, output);
            WriteFinished(name, duration);
        }

        public void TestSkipped(string name, string type, string method, string reason)
        {
            Console.WriteLine("##teamcity[testIgnored name='{0}' message='{1}']",
                              Escape(name), Escape(reason));

            WriteFinished(name, 0);
        }

        public bool TestStart(string name, string type, string method)
        {
            Console.WriteLine("##teamcity[testStarted name='{0}']", Escape(name));
            return true;
        }

        static string Escape(string value)
        {
            return value.Replace("|", "||")
                        .Replace("'", "|'")
                        .Replace("\r", "|r")
                        .Replace("\n", "|n")
                        .Replace("]", "|]");
        }

        static void WriteFinished(string name, double duration)
        {
            Console.WriteLine("##teamcity[testFinished name='{0}' duration='{1}']",
                                          Escape(name), (int)(duration * 1000D));
        }

        static void WriteOutput(string name, string output)
        {
            if (output != null)
                Console.WriteLine("##teamcity[testStdOut name='{0}' out='{1}']", Escape(name), Escape(output));
        }
    }
}