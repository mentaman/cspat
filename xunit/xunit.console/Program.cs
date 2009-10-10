using System;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using System.Reflection;

namespace Xunit.ConsoleClient
{
    public class Program
    {
        static string executablePath;

        static string ExecutablePath
        {
            get
            {
                if (executablePath == null)
                    executablePath = Path.GetDirectoryName(new Uri(Assembly.GetExecutingAssembly().CodeBase).LocalPath);

                return executablePath;
            }
        }

        static XunitConsoleConfigurationSection XUnitConsoleConfig
        {
            get { return (XunitConsoleConfigurationSection)ConfigurationManager.GetSection("xunit") ?? new XunitConsoleConfigurationSection(); }
        }

        [STAThread]
        public static int Main(string[] args)
        {
            Console.WriteLine("xUnit.net console test runner ({0}-bit .NET {1})", IntPtr.Size * 8, Environment.Version);
            Console.WriteLine("Copyright (C) 2007-9 Microsoft Corporation.");
            Console.WriteLine();

            if (args.Length == 0 || args[0] == "/?")
            {
                PrintUsage();
                return -1;
            }

            List<IResultXmlTransform> transforms = new List<IResultXmlTransform>();
            string assemblyFile;
            string configFile;
            bool noShadow;
            bool wait;
            bool teamcity;

            if (!ParseCommandLine(args, transforms, out assemblyFile, out configFile, out noShadow, out wait, out teamcity))
                return -1;

            if (!teamcity)
                transforms.Add(new SummaryTransformer());

            AppDomain.CurrentDomain.UnhandledException += OnUnhandledException;

            using (ExecutorWrapper wrapper = new ExecutorWrapper(assemblyFile, configFile, !noShadow))
            {
                Console.WriteLine("xunit.dll:     Version {0}", wrapper.XunitVersion);
                Console.WriteLine("Test assembly: {0}", Path.GetFullPath(assemblyFile));
                Console.WriteLine();

                IRunnerLogger logger = teamcity ? (IRunnerLogger)new TeamCityLogger() : new StandardLogger();
                TestRunner runner = new TestRunner(wrapper, logger);

                int returnCode = runner.RunAssembly(transforms) == TestRunnerResult.Failed ? 1 : 0;

                if (wait)
                {
                    Console.Write("Press any key to continue...");
                    Console.ReadKey();
                    Console.WriteLine();
                }

                return returnCode;
            }
        }

        static void OnUnhandledException(object sender,
                                         UnhandledExceptionEventArgs e)
        {
            Exception ex = e.ExceptionObject as Exception;

            if (ex != null)
                Console.WriteLine(ex.ToString());
            else
                Console.WriteLine("Error of unknown type thrown in applicaton domain");

            Environment.Exit(1);
        }

        static bool ParseCommandLine(string[] args, ICollection<IResultXmlTransform> transforms, out string assemblyFile, out string configFile, out bool noShadow, out bool wait, out bool teamcity)
        {
            int idx = 1;

            assemblyFile = args[0];
            configFile = null;
            noShadow = false;
            wait = false;
            teamcity = Environment.GetEnvironmentVariable("TEAMCITY_PROJECT_NAME") != null;

            if (!File.Exists(assemblyFile))
            {
                Console.WriteLine("error: assembly file not found: {0}", assemblyFile);
                return false;
            }

            if (args.Length > 1 && !args[1].StartsWith("/"))
            {
                configFile = args[1];
                idx = 2;

                if (!File.Exists(configFile))
                {
                    Console.WriteLine("error: config file not found: {0}", configFile);
                    return false;
                }
            }

            for (; idx < args.Length; idx++)
            {
                string argName = args[idx].ToLowerInvariant().Substring(1);
                switch (argName)
                {
                    case "xml":
                        if (idx == args.Length - 1 || args[idx + 1].StartsWith("/"))
                        {
                            Console.WriteLine("error: missing filename for /xml");
                            return false;
                        }
                        transforms.Add(new NullTransformer(args[++idx]));
                        break;

                    case "teamcity":
                        teamcity = true;
                        break;

                    case "noshadow":
                        noShadow = true;
                        break;

                    case "wait":
                        wait = true;
                        break;

                    default:
                        bool foundMatch = false;
                        foreach (TransformConfigurationElement transform in XUnitConsoleConfig.Transforms)
                        {
                            if (transform.CommandLine.ToLowerInvariant() == argName)
                            {
                                if (idx == args.Length - 1 || args[idx + 1].StartsWith("/"))
                                {
                                    Console.WriteLine("error: missing filename for {0}", args[idx]);
                                    return false;
                                }
                                string xslFile = Path.Combine(ExecutablePath, transform.XslFile);
                                if (!File.Exists(xslFile))
                                {
                                    Console.WriteLine("error: missing XSL file: {0}", xslFile);
                                    return false;
                                }

                                transforms.Add(new XslStreamTransformer(File.OpenRead(xslFile), args[++idx], null));
                                foundMatch = true;
                                break;
                            }
                        }

                        if (!foundMatch)
                        {
                            Console.WriteLine("error: unknown option: {0}", args[idx]);
                            return false;
                        }

                        break;
                }
            }

            return true;
        }

        static void PrintUsage()
        {
            string executableName = Path.GetFileNameWithoutExtension(new Uri(Assembly.GetExecutingAssembly().CodeBase).LocalPath);

            Console.WriteLine("usage: {0} <assemblyFile> [configFile] [options]", executableName);
            Console.WriteLine();
            Console.WriteLine("Valid options:");
            Console.WriteLine("  /noshadow              : do not shadow copy assemblies");
            Console.WriteLine("  /teamcity              : forces TeamCity mode (normally auto-detected)");
            Console.WriteLine("  /wait                  : wait for input after completion");
            Console.WriteLine("  /xml <filename>        : output results to Xunit-style XML file");

            foreach (TransformConfigurationElement transform in XUnitConsoleConfig.Transforms)
            {
                string commandLine = "/" + transform.CommandLine + " <filename>";
                commandLine = commandLine.PadRight(22).Substring(0, 22);

                Console.WriteLine("  {0} : {1}", commandLine, transform.Description);
            }

            Console.WriteLine("  /?                     : print this help message");
        }
    }
}