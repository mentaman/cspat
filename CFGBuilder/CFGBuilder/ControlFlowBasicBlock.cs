using System.Collections.Generic;
using Microsoft.Cci;
using Microsoft.Cci.ILToCodeModel;

namespace CFGBuilder
{
    public class ControlFlowBasicBlock
    {
        public const int ENTRY_BLOCK_ID = 0;
        public const int EXIT_BLOCK_ID = -1;
        private readonly IList<IStatement> statements = new List<IStatement>();
        private readonly IMethodDefinition methodDefinition;
        private readonly int id;
        private readonly IList<ControlFlowEdge> outgoingEdges = new List<ControlFlowEdge>();
        private readonly IList<ControlFlowEdge> incomingEdges = new List<ControlFlowEdge>();

        public IList<ControlFlowEdge> IncomingEdges
        {
            get { return incomingEdges; }
        }

        public ControlFlowBasicBlock(IMethodDefinition methodDefinition, int id)
        {
            this.methodDefinition = methodDefinition;
            this.id = id;
        }

        public int Id
        {
            get { return id; }
        }

        public IMethodDefinition MethodDefinition
        {
            get { return methodDefinition; }
        }

        public IList<IStatement> Statements
        {
            get { return statements; }
        }

        public IList<ControlFlowEdge> OutgoingEdges
        {
            get { return outgoingEdges; }
        }

        public bool IsEntryBlock()
        {
            return id == ENTRY_BLOCK_ID;
        }

        public bool IsExitBlock()
        {
            return id == EXIT_BLOCK_ID;
        }

        public override string ToString()
        {
            return this.GetType() + "<id: " + id + ">";
        }
    }

    public enum ControlFlowEdgeLabel
    {
        None,
        True,
        False
    }
}