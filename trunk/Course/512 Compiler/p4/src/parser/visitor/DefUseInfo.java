package parser.visitor;

import java.util.ArrayList;
import java.util.Stack;

import parser.ASTexp;
import parser.ASTnoAssignExp;
import parser.ASTstm;
import parser.Node;
import parser.SimpleNode;


public class DefUseInfo {
	private boolean debug = true;
	private String id;
	
	private void debug(String text){
		if (debug) {
			System.out.println(text);
		}
	}
	
	public DefUseInfo(ASTstm expNode, String id) {
		
		this.id = id;
		pushDef(expNode);
	}

	public DefUseInfo() {
	}

	private Stack<ASTstm> defs = new Stack<ASTstm>();
	private Stack<ArrayList<SimpleNode>> uses = new Stack<ArrayList<SimpleNode>>();

	public void pushDef(ASTstm expNode) {
		defs.push(expNode);
		uses.push(new ArrayList<SimpleNode>());

	}

	public void used(ASTnoAssignExp exp) {
		uses.peek().add(exp);
	}
	
	public void deleteUnusedDef(){
		while (!defs.empty()) {
			ASTstm defExp = defs.pop();
			ArrayList<SimpleNode> useList = uses.pop();
			if (useList.size() < 1) {
				((SimpleNode)(defExp.jjtGetParent())).jjtDeleteChild(defExp);
				debug("deleting assignment of " + id);
			}
			
			
		}

	}

}
