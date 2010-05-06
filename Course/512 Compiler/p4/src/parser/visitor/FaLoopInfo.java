package parser.visitor;

import parser.ASTfa;

public class FaLoopInfo {
	public FaLoopInfo(String var, ASTfa node) {
		this.loopVariable = var;
		this.faNode = node;
	}
	public String loopVariable;
	public ASTfa faNode;
}
