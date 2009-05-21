namespace CFGBuilder
{
    public class ControlFlowEdge
    {
        private ControlFlowBasicBlock fromBlock;
        private ControlFlowBasicBlock toBlock;
        private ControlFlowEdgeLabel label;

        public ControlFlowEdge(ControlFlowBasicBlock fromBlock, ControlFlowBasicBlock toBlock, ControlFlowEdgeLabel label)
        {
            this.fromBlock = fromBlock;
            this.toBlock = toBlock;
            this.label = label;
        }

        public ControlFlowEdge(ControlFlowBasicBlock fromBlock, ControlFlowBasicBlock toBlock)
        {
            this.fromBlock = fromBlock;
            this.toBlock = toBlock;
        }

        public ControlFlowBasicBlock FromBlock
        {
            get { return fromBlock; }
        }

        public ControlFlowBasicBlock ToBlock
        {
            get { return toBlock; }
        }

        public ControlFlowEdgeLabel Label
        {
            get { return label; }
        }
    }
}