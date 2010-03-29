package parser.visitor;

import java.io.FileWriter;
import java.io.IOException;

import parser.*;
import parser.generator.TMCodeGenerator;
import table.*;
import type.TypeRecord;

public class CodeGenerationVisitor extends CascadeVisitor {

	private int lineNbr = 0;
	private int dataPointer = 1;
	private SymbolTable globalTable;
	private SymbolTable currentTable;
	private TMCodeGenerator code = new TMCodeGenerator();
	private boolean debug = true;

	private void debug(String text) {
		if (debug) {
			System.out.println(text);
		}
	}

	@Override
	public Object visit(ASTotherstm node, Object data) {
		return super.visit(node, data);
	}

	public CodeGenerationVisitor() {
		super();
	}

	public CodeGenerationVisitor(SymbolTable globalTable) {
		super();
		this.globalTable = globalTable;
	}

	@Override
	public Object visit(ASTprogram node, Object data) {

		currentTable = globalTable;
		code.emitLD(RegisterConstant.SP, 0, RegisterConstant.ZERO, lineNbr++,
				"save stack pointer");

		super.visit(node, data);

		code.emitHALT(lineNbr++, "program ends");

		try {
			FileWriter writer = new FileWriter("generated.tm");
			writer.write(code.toString());
			writer.close();
		} catch (IOException e) {
			System.out.println("e");
			e.printStackTrace();
		}

		System.out.println("emit code:");
		System.out.println(code.toString());
		return data;
	}

	@Override
	public Object visit(ASTintTerm node, Object data) {
		Token token = node.getFirstToken();
		debug("ASTintTerm token: " + token);
		int value = Integer.parseInt(token.image);
		code.emitLDC(RegisterConstant.AC, value, RegisterConstant.ZERO,
				lineNbr++, "load integer " + value);
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTboolTerm node, Object data) {
		Token token = node.getFirstToken();
		debug("ASTintTerm token: " + token);
		int value = 1;
		if (token.image.equals("false")) {
			value = 0;
		}
		code.emitLDC(RegisterConstant.AC, value, RegisterConstant.ZERO,
				lineNbr++, "load boolean" + token.image);
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTwrite_stm node, Object data) {
		super.visit(node, data);
		SimpleNode childNode = (SimpleNode) node.jjtGetChild(0);
		TypeRecord type = (TypeRecord) childNode.jjtGetValue();
		if (type.equals(TypeRecord.intType)) {
			code.emitOUT(RegisterConstant.AC, lineNbr++, "write integer");
		} else if (type.equals(TypeRecord.boolType)) {
			code.emitOUTB(RegisterConstant.AC, lineNbr++, "write boolean");
		} else if (type.equals(TypeRecord.strType)) {
		}

		if (node.getFirstToken().image.equals("write")) {
			code.emitOUTNL(lineNbr++, "write new line");
		}

		return data;
	}

	@Override
	public Object visit(ASTAdditive node, Object data) {
		// TODO Auto-generated method stub
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTreadTerm node, Object data) {
		debug("token: " + node.getFirstToken());
		code.emitIN(RegisterConstant.AC, lineNbr++, "read integer from stdin");		
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTstringTerm node, Object data) {
		debug("token: " + node.getFirstToken());
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTplusMinus node, Object data) {
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);
		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
				"push first child's value");

		SimpleNode secondChildNode = (SimpleNode) node.jjtGetChild(1);
		secondChildNode.jjtAccept(this, data);
		lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
				"pop first child's value");

		Token token = node.getFirstToken();
		String operator = token.image;
		if (operator.equals("+")) {
			if (type.equals(TypeRecord.intType)) {
				code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
						RegisterConstant.AC2, lineNbr++, "add two children");
			}
			if (type.equals(TypeRecord.boolType)) {
				code.emitADD(RegisterConstant.AC2, RegisterConstant.AC,
						RegisterConstant.AC2, lineNbr++, "add two children");
				code.emitLDC(RegisterConstant.AC, 1, RegisterConstant.ZERO,
						lineNbr++, "load 1 as true");
				code.emitJNE(RegisterConstant.AC2, 1, RegisterConstant.PC,
						lineNbr++, "skip load false");
				code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO,
						lineNbr++, "load 0 as false");
			}

		} else if (operator.equals("-")) {
			code.emitSUB(RegisterConstant.AC, RegisterConstant.AC2,
					RegisterConstant.AC, lineNbr++, "subtract two children");
		}

		return data;
	}

	@Override
	public Object visit(ASTtimeDivide node, Object data) {
		TypeRecord type = (TypeRecord) node.jjtGetValue();

		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);
		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
				"push first child's value");

		SimpleNode secondChildNode = (SimpleNode) node.jjtGetChild(1);
		secondChildNode.jjtAccept(this, data);
		lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
				"pop first child's value");

		Token token = node.getFirstToken();
		String operator = token.image;
		if (operator.equals("*")) {
			code.emitMUL(RegisterConstant.AC, RegisterConstant.AC,
					RegisterConstant.AC2, lineNbr++, "multiply two children");

		} else if (operator.equals("/")) {
			code.emitDIV(RegisterConstant.AC, RegisterConstant.AC2,
					RegisterConstant.AC, lineNbr++, "divide two children");
		}
		else if (operator.equals("%")) {
			code.emitDIV(RegisterConstant.AC3, RegisterConstant.AC2,
					RegisterConstant.AC, lineNbr++, "divide two children");
			code.emitMUL(RegisterConstant.AC, RegisterConstant.AC3,
					RegisterConstant.AC, lineNbr++, "multiply quotient and divisor");
			code.emitSUB(RegisterConstant.AC, RegisterConstant.AC2,
					RegisterConstant.AC, lineNbr++, "compute mod");
		}

		return data;
	}

	@Override
	public Object visit(ASTcompares node, Object data) {

		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);
		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
				"push first child's value");

		String operator = ((SimpleNode) node.jjtGetChild(1)).getFirstToken().image;

		SimpleNode thirdChildNode = (SimpleNode) node.jjtGetChild(2);
		thirdChildNode.jjtAccept(this, data);
		lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
				"pop first child's value");

		Token token = node.getFirstToken();

		code.emitSUB(RegisterConstant.AC2, RegisterConstant.AC2,
				RegisterConstant.AC, lineNbr++, "greater than");
		code.emitLDC(RegisterConstant.AC, 1, RegisterConstant.ZERO, lineNbr++,
				"load 1 as true");
		if (operator.equals(">")) {
			code.emitJGT(RegisterConstant.AC2, 1, RegisterConstant.PC,
					lineNbr++, "skip load false");
		} else if (operator.equals("<")) {
			code.emitJLT(RegisterConstant.AC2, 1, RegisterConstant.PC,
					lineNbr++, "skip load false");
		} else if (operator.equals(">=")) {
			code.emitJGE(RegisterConstant.AC2, 1, RegisterConstant.PC,
					lineNbr++, "skip load false");
		} else if (operator.equals("<=")) {
			code.emitJLE(RegisterConstant.AC2, 1, RegisterConstant.PC,
					lineNbr++, "skip load false");
		} else if (operator.equals("=")) {
			code.emitJEQ(RegisterConstant.AC2, 1, RegisterConstant.PC,
					lineNbr++, "skip load false");
		} else if (operator.equals("!=")) {
			code.emitJNE(RegisterConstant.AC2, 1, RegisterConstant.PC,
					lineNbr++, "skip load false");
		}
		code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO, lineNbr++,
				"load 0 as false");
		return data;
	}

	@Override
	public Object visit(ASTUnary node, Object data) {
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		super.visit(node, data);
		Token t1 = node.getTokenAt(0);
		Token t2 = node.getTokenAt(1);

		if (t1.image.equals("-") || t2.image.equals("-")) {
			if (type.equals(TypeRecord.intType)) {
				code.emitLDC(RegisterConstant.AC2, 0, RegisterConstant.ZERO,
						lineNbr++, "load 0 into AC2");
				code.emitSUB(RegisterConstant.AC, RegisterConstant.AC2,
						RegisterConstant.AC, lineNbr++,
						"compute negative number");

			} else if (type.equals(TypeRecord.boolType)) {
				code.emitLDA(RegisterConstant.AC2, 0, RegisterConstant.AC,
						lineNbr++, "copy AC to AC2");
				code.emitLDC(RegisterConstant.AC, 1, RegisterConstant.ZERO,
						lineNbr++, "load 1 as true");
				code.emitJEQ(RegisterConstant.AC2, 1, RegisterConstant.PC,
						lineNbr++, "skip load false");
				code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO,
						lineNbr++, "load 0 as false");

			}
		}

		return data;
	}

	@Override
	public Object visit(ASTifstm node, Object data) {
		debug("if children count: " + node.jjtGetNumChildren());
		for(int i =0;i<node.jjtGetNumChildren();i++){
			debug("child " + i + ": " + node.jjtGetChild(i));
		}
		return super.visit(node, data);
	}
	
	

}
