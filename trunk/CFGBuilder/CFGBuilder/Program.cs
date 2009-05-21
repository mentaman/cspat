using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using Microsoft.Cci;
using Microsoft.Cci.Contracts;

namespace CFGBuilder
{
    class Program
    {
        static void Main(string[] args)
        {
            if (args == null || args.Length == 0)
            {
                return;
            }
            var host = new HostEnvironment();
            var/*?*/ module = host.LoadUnitFrom(args[0]) as IModule;
            if (module == null || module == Dummy.Module || module == Dummy.Assembly)
            {
                Console.WriteLine(args[0] + " is not a PE file containing a CLR module or assembly.");
                return;
            }

            var contractProvider = new ContractProvider(new ContractMethods(host));
            PdbReader/*?*/ pdbReader = null;
            string pdbFile = Path.ChangeExtension(module.Location, "pdb");
            if (File.Exists(pdbFile))
            {
                Stream pdbStream = File.OpenRead(pdbFile);
                pdbReader = new PdbReader(pdbStream, host);
            }

            var root = module.UnitNamespaceRoot;
            var builder = new MethodCFGBuilder(host,contractProvider,pdbReader);
            builder.Visit(root);
//            Console.ReadLine();
        }
    }

    internal class HostEnvironment : MetadataReaderHost
    {
        PeReader peReader;
        internal HostEnvironment()
        {
            this.peReader = new PeReader(this);
        }

        public override IUnit LoadUnitFrom(string location)
        {
            IUnit result = this.peReader.OpenModule(BinaryDocument.GetBinaryDocumentForFile(location, this));
            this.RegisterAsLatest(result);
            return result;
        }

    }
}
