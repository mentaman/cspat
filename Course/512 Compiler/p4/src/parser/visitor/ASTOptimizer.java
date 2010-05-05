package parser.visitor;

import java.util.*;
import java.util.Map.Entry;



import parser.ASTassignExp;
import parser.ASTexp;
import parser.ASTifstm;
import parser.ASTlvalue;
import parser.ASTnoAssignExp;
import parser.ASTprogram;
import parser.ASTstm;
import parser.Node;
import parser.Token;

public class ASTOptimizer extends CascadeVisitor {

	HashMap<String, DefUseInfo> blockDefUses = new HashMap<String, DefUseInfo>();

	@Override
	public Object visit(ASTprogram node, Object data) {

		super.visit(node, data);
		exitBlock();
		return data;
	}
	
	

	private void exitBlock() {
		for (Entry<String, DefUseInfo> entry : blockDefUses.entrySet()) {
			DefUseInfo defUse = entry.getValue();
			defUse.deleteUnusedDef();
		}
		
	}



	@Override
	public Object visit(ASTifstm node, Object data) {
//		exitPreviousBlock();
		node.childrenAccept(this, data);
		return data;
	}



	@Override
	public Object visit(ASTassignExp node, Object data) {
		ASTlvalue lvalue = (ASTlvalue) node.jjtGetChild(0);
		ASTnoAssignExp noAssignExp = (ASTnoAssignExp) node.jjtGetChild(1);
		Token idToken = lvalue.getFirstToken();
		String id = idToken.image;

		noAssignExp.jjtAccept(this, data); // visit expression first

		Node parent = node.jjtGetParent();
		while (parent != null && !(parent instanceof ASTstm)) {
			parent = parent.jjtGetParent();			
		}
		ASTstm stm = (ASTstm) parent; 
		if (!blockDefUses.containsKey(id)) {

			blockDefUses.put(id, new DefUseInfo(stm,id));
		} else {
			blockDefUses.get(id).pushDef(stm);
		}

		return data;
		// return super.visit(node, data);
	}

	@Override
	public Object visit(ASTlvalue node, Object data) {
		Token idToken = node.getFirstToken();
		String id = idToken.image;
		if (!node.isAssignment) {
			if (blockDefUses.containsKey(id)) {
				blockDefUses.get(id).used(node.FindNoAssignExp());
			}
		}

		return super.visit(node, data);
	}

}
