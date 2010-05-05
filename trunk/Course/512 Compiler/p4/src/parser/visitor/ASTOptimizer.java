package parser.visitor;

import java.util.*;
import java.util.Map.Entry;

import com.sun.org.apache.bcel.internal.generic.Type;
import com.sun.xml.internal.bind.v2.model.core.ID;

import parser.ASTAdditive;
import parser.ASTPrefixExp;
import parser.ASTPrimaryExp;
import parser.ASTTimes;
import parser.ASTUnary;
import parser.ASTassignExp;
import parser.ASTassociateExp;
import parser.ASTboolTerm;
import parser.ASTcompares;
import parser.ASTdostm;
import parser.ASTexp;
import parser.ASTfa;
import parser.ASTifstm;
import parser.ASTintTerm;
import parser.ASTlvalue;
import parser.ASTnoAssignExp;
import parser.ASTplusMinus;
import parser.ASTprogram;
import parser.ASTstm;
import parser.ASTtimeDivide;
import parser.Ice9ParserTreeConstants;
import parser.Node;
import parser.SimpleNode;
import parser.Token;
import type.BasicType;
import type.TypeRecord;

public class ASTOptimizer extends CascadeVisitor {

	HashMap<String, DefUseInfo> blockDefUses = new HashMap<String, DefUseInfo>();
	HashMap<String, Integer> constantTables = new HashMap<String, Integer>();
	// HashMap<String, DefUseInfo> currentDefUses = new HashMap<String,
	// DefUseInfo>();
	ArrayList<ASTstm> unusedDefsArrayList = new ArrayList<ASTstm>();

	private boolean debug = true;

	private void debug(String text) {
		if (debug) {
			System.out.println(text);
		}
	}

	@Override
	public Object visit(ASTprogram node, Object data) {
		// currentDefUses = globalDefUses;
		super.visit(node, data);
		exitLastBlock();
		return data;
	}

	private void exitLastBlock() {
		for (Entry<String, DefUseInfo> entry : blockDefUses.entrySet()) {
			DefUseInfo defUse = entry.getValue();
			unusedDefsArrayList.addAll(defUse.findUnusedDef());
		}

		for (ASTstm stm : unusedDefsArrayList) {
			((SimpleNode) (stm.jjtGetParent())).jjtDeleteChild(stm);
		}

	}

	@Override
	public Object visit(ASTcompares node, Object data) {
		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);

		String operator = ((SimpleNode) node.jjtGetChild(1)).getFirstToken().image;

		SimpleNode thirdChildNode = (SimpleNode) node.jjtGetChild(2);
		thirdChildNode.jjtAccept(this, data);

		if (!node.isConstant()) {
			return data;
		}
		Token token = node.getFirstToken();

		if (operator.equals(">")) {
			if (firstChildNode.constantValue > thirdChildNode.constantValue) {
				node.constantValue = 1;
			}
			node.constantValue = 0;

		} else if (operator.equals("<")) {
			if (firstChildNode.constantValue < thirdChildNode.constantValue) {
				node.constantValue = 1;
			}
			node.constantValue = 0;
		} else if (operator.equals(">=")) {
			if (firstChildNode.constantValue >= thirdChildNode.constantValue) {
				node.constantValue = 1;
			}
			node.constantValue = 0;
		} else if (operator.equals("<=")) {
			if (firstChildNode.constantValue <= thirdChildNode.constantValue) {
				node.constantValue = 1;
			}
			node.constantValue = 0;
		} else if (operator.equals("=")) {
			if (firstChildNode.constantValue == thirdChildNode.constantValue) {
				node.constantValue = 1;
			}
			node.constantValue = 0;
		} else if (operator.equals("!=")) {
			if (firstChildNode.constantValue != thirdChildNode.constantValue) {
				node.constantValue = 1;
			}
			node.constantValue = 0;
		}
		debug("ASTcompares node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTassociateExp node, Object data) {
		super.visit(node, data);
		if (node.isConstant()) {
			node.constantValue = ((SimpleNode) node.jjtGetChild(0)).constantValue;
		}
		debug("ASTassociateExp node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTboolTerm node, Object data) {
		Token token = node.getFirstToken();
		if (token.image.equals("true")) {
			node.constantValue = 1;
		} else if (token.image.equals("false")) {
			node.constantValue = 0;
		}
		debug("boolterm node constant value: " + node.constantValue);
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTintTerm node, Object data) {
		Token token = node.getFirstToken();
		node.constantValue = Integer.parseInt(token.image);
		debug("intterm node constant value: " + node.constantValue);
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTPrimaryExp node, Object data) {
		super.visit(node, data);
		if (node.isConstant()) {
			node.constantValue = ((SimpleNode) node.jjtGetChild(0)).constantValue;
		}
		debug("primary node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTnoAssignExp node, Object data) {
		super.visit(node, data);
		if (node.isConstant()) {
			node.constantValue = ((SimpleNode) node.jjtGetChild(0)).constantValue;
		}
		debug("ASTnoAssignExp node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTtimeDivide node, Object data) {
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		Token token = node.getFirstToken();
		String operator = token.image;
		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);

		SimpleNode secondChildNode = (SimpleNode) node.jjtGetChild(1);
		secondChildNode.jjtAccept(this, data);

		if (!node.isConstant()) {
			return data;
		}

		if (operator.equals("*")) {
			node.constantValue = firstChildNode.constantValue
					* secondChildNode.constantValue;

		} else if (operator.equals("/")) {
			node.constantValue = firstChildNode.constantValue
					/ secondChildNode.constantValue;
		} else if (operator.equals("%")) {
			node.constantValue = firstChildNode.constantValue
					% secondChildNode.constantValue;
		}

		debug("timedivide node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTAdditive node, Object data) {
		super.visit(node, data);

		if (node.isConstant()) {
			node.constantValue = ((SimpleNode) node.jjtGetChild(0)).constantValue;
		}
		debug("ASTAdditive node constant value: " + node.constantValue);

		return data;
	}

	@Override
	public Object visit(ASTTimes node, Object data) {

		super.visit(node, data);

		if (node.isConstant()) {
			node.constantValue = ((SimpleNode) node.jjtGetChild(0)).constantValue;
		}
		debug("ASTTimes node constant value: " + node.constantValue);

		return data;
	}

	@Override
	public Object visit(ASTPrefixExp node, Object data) {
		super.visit(node, data);
		if (node.isConstant()) {
			node.constantValue = ((SimpleNode) node.jjtGetChild(0)).constantValue;
		}
		debug("prefix node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTplusMinus node, Object data) {
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);

		SimpleNode secondChildNode = (SimpleNode) node.jjtGetChild(1);
		secondChildNode.jjtAccept(this, data);

		if (!node.isConstant()) {
			return data;
		}

		Token token = node.getFirstToken();
		String operator = token.image;
		if (operator.equals("+")) {
			if (type.equals(TypeRecord.intType)) {
				node.constantValue = firstChildNode.constantValue
						+ secondChildNode.constantValue;
			}
			if (type.equals(TypeRecord.boolType)) {
				if (firstChildNode.constantValue == 1
						|| secondChildNode.constantValue == 1) {
					node.constantValue = 1;
				} else {
					node.constantValue = 0;
				}
			}

		} else if (operator.equals("-")) {
			node.constantValue = firstChildNode.constantValue
					- secondChildNode.constantValue;
		}

		debug("ASTplusMinus node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTUnary node, Object data) {
		super.visit(node, data);
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		SimpleNode child = (SimpleNode) node.jjtGetChild(0);
		TypeRecord childType = (TypeRecord) child.jjtGetValue();
		super.visit(node, data);
		Token t1 = node.getTokenAt(0);
		Token t2 = node.getTokenAt(1);

		if (t1.image.equals("-")) {
			if (type.equals(TypeRecord.intType)) {
				node.constantValue = -child.constantValue;

			} else if (type.equals(TypeRecord.boolType)) {
				if (child.constantValue == 1) {
					node.constantValue = 0;
				} else if (child.constantValue == 0) {
					node.constantValue = 1;
				}
			}
		} else if (t2 != null && t2.image.equals("-")) {
			if (childType.equals(TypeRecord.intType)) {
				node.constantValue = -child.constantValue;
			} else if (childType.equals(TypeRecord.boolType)) {
				if (child.constantValue == 1) {
					node.constantValue = 0;
				} else if (child.constantValue == 0) {
					node.constantValue = 1;
				}
			}
		}
		debug("unary node constant value: " + node.constantValue);
		return data;
	}

	@Override
	public Object visit(ASTifstm node, Object data) {

		debug("blockdefuses: " + blockDefUses);
		int childrenCount = node.jjtGetNumChildren();
		debug("if children count: " + childrenCount);
		for (int i = 0; i < childrenCount; i++) {
			debug("child " + i + ": " + node.jjtGetChild(i));
		}

		for (int i = 0; i + 1 < childrenCount; i += 2) {
			enterNewBlock();
			node.jjtGetChild(i).jjtAccept(this, data); // generate expression
			node.jjtGetChild(i + 1).jjtAccept(this, data); // generate stms
		}

		if (node.hasElse) {
			enterNewBlock();
			node.jjtGetChild(childrenCount - 1).jjtAccept(this, data); // generate
			// else stms
		}

		return data;
	}

	@Override
	public Object visit(ASTdostm node, Object data) {
		enterNewBlock();
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTfa node, Object data) {
		enterNewBlock();
		return super.visit(node, data);
	}

	private void enterNewBlock() {
		for (Entry<String, DefUseInfo> entry : blockDefUses.entrySet()) {
			DefUseInfo defUse = entry.getValue();
			unusedDefsArrayList.addAll(defUse.findUnusedDefAndKeepLatest());
		}
		blockDefUses.clear();
		constantTables.clear();
	}

	@Override
	public Object visit(ASTassignExp node, Object data) {
		ASTlvalue lvalue = (ASTlvalue) node.jjtGetChild(0);
		lvalue.jjtAccept(this, data);
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

			blockDefUses.put(id, new DefUseInfo(stm, id));
		} else {
			blockDefUses.get(id).pushDef(stm);
		}

		// end assignment optimization

		if (noAssignExp.isConstant()) {
			TypeRecord type = (TypeRecord) noAssignExp.jjtGetValue();
			if (TypeRecord.intType.equals(type)) {
				ASTintTerm intterm = new ASTintTerm(
						Ice9ParserTreeConstants.JJTINTTERM);
				intterm.constantValue = noAssignExp.constantValue;
				intterm.addToken(new Token(0, String
						.valueOf(intterm.constantValue)));
				intterm.jjtSetValue(new TypeRecord(BasicType.INT));
				node.jjtReplaceNode(noAssignExp, intterm);
			} else if (TypeRecord.boolType.equals(type)) {

				ASTboolTerm boolterm = new ASTboolTerm(
						Ice9ParserTreeConstants.JJTBOOLTERM);
				boolterm.constantValue = noAssignExp.constantValue;
				if (boolterm.constantValue == 1) {
					boolterm.addToken(new Token(0, "true"));
				} else if (boolterm.constantValue == 0) {
					boolterm.addToken(new Token(0, "false"));
				}
				boolterm.jjtSetValue(new TypeRecord(BasicType.BOOL));
				node.jjtReplaceNode(noAssignExp, boolterm);

			}
			constantTables.put(id, noAssignExp.constantValue);
		}

		return data;
		// return super.visit(node, data);
	}

	@Override
	public Object visit(ASTlvalue node, Object data) {
		Token idToken = node.getFirstToken();
		String id = idToken.image;
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		if (!node.isAssignment) {

			if (constantTables.containsKey(id)) {
				if (TypeRecord.intType.equals(type)) {
					ASTintTerm intterm = new ASTintTerm(
							Ice9ParserTreeConstants.JJTINTTERM);
					intterm.constantValue = constantTables.get(id);
					intterm.addToken(new Token(0, String
							.valueOf(intterm.constantValue)));
					intterm.jjtSetValue(new TypeRecord(BasicType.INT));
					SimpleNode parent = (SimpleNode) node.jjtGetParent();
					parent.jjtReplaceNode(node, intterm);
					debug("replace lvalue with int constant "
							+ constantTables.get(id));
				} else if (TypeRecord.boolType.equals(type)) {

					ASTboolTerm boolterm = new ASTboolTerm(
							Ice9ParserTreeConstants.JJTBOOLTERM);
					boolterm.constantValue = constantTables.get(id);
					if (boolterm.constantValue == 1) {
						boolterm.addToken(new Token(0, "true"));
					} else if (boolterm.constantValue == 0) {
						boolterm.addToken(new Token(0, "false"));
					}
					boolterm.jjtSetValue(new TypeRecord(BasicType.BOOL));
					SimpleNode parent = (SimpleNode) node.jjtGetParent();
					parent.jjtReplaceNode(node, boolterm);
					debug("replace lvalue with int constant "
							+ constantTables.get(id));
				}
			} else if (blockDefUses.containsKey(id)) {
				blockDefUses.get(id).used(node.FindNoAssignExp());
			}

		}

		return super.visit(node, data);
	}

}
