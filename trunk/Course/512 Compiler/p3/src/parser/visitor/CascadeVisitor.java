/**
 * 
 */
package parser.visitor;

import parser.ASTAdditive;
import parser.ASTPrefixExp;
import parser.ASTPrimaryExp;
import parser.ASTTimes;
import parser.ASTUnary;
import parser.ASTassociateExp;
import parser.ASTboolTerm;
import parser.ASTbreak_stm;
import parser.ASTcompareOp;
import parser.ASTcompares;
import parser.ASTdeclist;
import parser.ASTdostm;
import parser.ASTexit_stm;
import parser.ASTexp;
import parser.ASTfa;
import parser.ASTforward;
import parser.ASTidlist;
import parser.ASTifstm;
import parser.ASTintTerm;
import parser.ASTlvalue;
import parser.ASTnoAssignExp;
import parser.ASTop;
import parser.ASTotherstm;
import parser.ASTplusMinus;
import parser.ASTproc;
import parser.ASTprocedureCall;
import parser.ASTprogram;
import parser.ASTreadTerm;
import parser.ASTreturn_stm;
import parser.ASTstm;
import parser.ASTstms;
import parser.ASTstringTerm;
import parser.ASTtimeDivide;
import parser.ASTtokenTest;
import parser.ASTtype;
import parser.ASTtypeid;
import parser.ASTvar;
import parser.ASTvarlist;
import parser.ASTwrite_stm;
import parser.Ice9ParserVisitor;
import parser.SimpleNode;

public class CascadeVisitor implements Ice9ParserVisitor {

	boolean debug = true;

	public void commonAction(SimpleNode node, Object data) {
		if (debug) {
			System.out.println("node: " + node);
		}
		node.childrenAccept(this, data);
	};

	@Override
	public Object visit(SimpleNode node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTprogram node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTtokenTest node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTtypeid node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTop node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTidlist node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTstms node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTstm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTotherstm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTreturn_stm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTexit_stm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTbreak_stm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTwrite_stm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTifstm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTdostm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTfa node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTproc node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTvarlist node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTvar node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTdeclist node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTforward node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTtype node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTlvalue node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTcompareOp node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTAdditive node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTplusMinus node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTTimes node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTtimeDivide node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTPrefixExp node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTUnary node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTPrimaryExp node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTprocedureCall node, Object data) {
		commonAction(node, data);
		return data;
	}

	public Object visit(ASTassociateExp node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTexp node, Object data) {
		commonAction(node, data);
		return data;
	}

	public Object visit(ASTnoAssignExp node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTcompares node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTintTerm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTboolTerm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTreadTerm node, Object data) {
		commonAction(node, data);
		return data;
	}

	@Override
	public Object visit(ASTstringTerm node, Object data) {
		commonAction(node, data);
		return data;
	}

}
