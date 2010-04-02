package parser.visitor;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import org.hamcrest.core.IsAnything;

import com.sun.org.apache.bcel.internal.generic.StoreInstruction;

import parser.*;
import parser.generator.TMCodeGenerator;
import table.*;
import type.BasicType;
import type.TypeRecord;

public class CodeGenerationVisitor extends CascadeVisitor {

	private int lineNbr = 0;
	private int dataPointer = 1;
	private SymbolTable globalTable;
	private SymbolTable currentTable;
	private TMCodeGenerator code = new TMCodeGenerator();
	private boolean debug = true;
	private HashMap<String, Integer> stringTable = new HashMap<String, Integer>();
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
		currentTable = globalTable;
	}

	@Override
	public Object visit(ASTprogram node, Object data) {

		currentTable = globalTable;
		code.emitLD(RegisterConstant.SP, 0, RegisterConstant.ZERO, lineNbr++,
				"save stack pointer");
		code.emitLD(RegisterConstant.FP, 0, RegisterConstant.ZERO, lineNbr++,
				"save frame pointer");

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
			lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr, "pop char");

			code.emitOUTC(RegisterConstant.AC2, lineNbr++, "write char");
			code.emitLDA(RegisterConstant.AC, -1, RegisterConstant.AC,
					lineNbr++, "decrease length of remaining string");
			code.emitJNE(RegisterConstant.AC, -5, RegisterConstant.PC,
					lineNbr++, "continue print if not yet finish");
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
		String original = node.getFirstToken().image;
		String content = original.substring(1, original.length() - 1);
		debug("content: " + content);
		for (int i = content.length() - 1; i >= 0; i--) {
			int value = content.charAt(i) - 0;
			code.emitLDC(RegisterConstant.AC, value, RegisterConstant.ZERO,
					lineNbr++, "load char in ASCii: " + value);
			lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
					"push char into stack");

		}
		code.emitLDC(RegisterConstant.AC, content.length(),
				RegisterConstant.ZERO, lineNbr++, "load string length "
						+ content.length());
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
		} else if (operator.equals("%")) {
			code.emitDIV(RegisterConstant.AC3, RegisterConstant.AC2,
					RegisterConstant.AC, lineNbr++, "divide two children");
			code.emitMUL(RegisterConstant.AC, RegisterConstant.AC3,
					RegisterConstant.AC, lineNbr++,
					"multiply quotient and divisor");
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
		int childrenCount = node.jjtGetNumChildren();
		debug("if children count: " + childrenCount);
		for (int i = 0; i < childrenCount; i++) {
			debug("child " + i + ": " + node.jjtGetChild(i));
		}

		int saveLineNbr = 0;
		ArrayList<Integer> saveJumpToAfterIf = new ArrayList<Integer>();
		for (int i = 0; i + 1 < childrenCount; i += 2) {
			node.jjtGetChild(i).jjtAccept(this, data); // generate expression
			saveLineNbr = lineNbr;
			lineNbr++;
			node.jjtGetChild(i + 1).jjtAccept(this, data); // generate stms
			if (node.hasElse || node.hasElseIf) { // save line number for jump to the end
				saveJumpToAfterIf.add(lineNbr);
				lineNbr++;
			}
			code.emitJEQ(RegisterConstant.AC, lineNbr - saveLineNbr - 1,
					RegisterConstant.PC, saveLineNbr, "if expr not true");
		}

		if (node.hasElse) {
			node.jjtGetChild(childrenCount - 1).jjtAccept(this, data); // generate
			// else stms
		}

		for (int i = 0; i < saveJumpToAfterIf.size(); i++) {
			int distance = lineNbr - saveJumpToAfterIf.get(i) - 1;
			code.emitLDA(RegisterConstant.PC, distance, RegisterConstant.PC,
					saveJumpToAfterIf.get(i), "Jump to the end of if");
		}

		return data;
	}

	@Override
	public Object visit(ASTassignExp node, Object data) {
		ASTlvalue lvalue = (ASTlvalue) node.jjtGetChild(0);
		lvalue.isAssignment = true;
		// super.visit(node, data);

		String id = lvalue.getFirstToken().image;
		TypeRecord type = (TypeRecord) lvalue.jjtGetValue();
		lvalue.jjtAccept(this, data);

		SimpleNode exp = (SimpleNode) node.jjtGetChild(1);
		TypeRecord expType = (TypeRecord) exp.jjtGetValue();
		int currentOffset = 0;
		try {
			currentOffset = currentTable.lookupId(lvalue.getFirstToken()).offset;
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}
		// debug("currentTable: " + currentTable);
		if (lvalue.isArray) { // array
			System.out.println("original type: " + lvalue.originalType);
			int offset = currentOffset;
			if (currentOffset == 0) {
				offset = dataPointer;
			}
			int totalSize = TypeRecord.arraySize(type);
			TypeRecord currentRecord = lvalue.originalType;
			code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO,
					lineNbr++, "load 0 to ac");
			for (int i = 0; i < lvalue.jjtGetNumChildren(); i++) {
				int sizeOfSubArray = TypeRecord
						.arraySize(currentRecord.underType);
				System.out.println("subarray size: " + sizeOfSubArray);
				lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
						"pop index");

				code.emitLDC(RegisterConstant.AC3, sizeOfSubArray,
						RegisterConstant.ZERO, lineNbr++,
						"load size of subarray");
				code.emitMUL(RegisterConstant.AC2, RegisterConstant.AC2,
						RegisterConstant.AC3, lineNbr++, "compute " + i
								+ " dim");
				code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
						RegisterConstant.AC2, lineNbr++, "add result");

				currentRecord = currentRecord.underType;
			}

			code.emitLDC(RegisterConstant.AC2, offset, RegisterConstant.ZERO,
					lineNbr++, "load offset into ac2");
			code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
					RegisterConstant.AC2, lineNbr++, "compute final offset");
			lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
					"push final offset");

			exp.jjtAccept(this, data);
			lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
					"pop final offset");

			code.emitST(RegisterConstant.AC, 0, RegisterConstant.AC2,
					lineNbr++, "store value into static data");

			if (currentOffset == 0) {
				lvalue.originalType.offset = offset;
				currentTable.variableTable.put(id, lvalue.originalType);
				dataPointer += TypeRecord.arraySize(lvalue.originalType);
			}

		} else {
			exp.jjtAccept(this, data);
			System.out.println("currentoffset: " + currentOffset);
			if (type.equals(TypeRecord.intType)) {

				if (currentOffset == 0) {
					code.emitST(RegisterConstant.AC, dataPointer,
							RegisterConstant.ZERO, lineNbr++,
							"store int into static data");
					TypeRecord newTypeRecord = new TypeRecord(BasicType.INT);
					newTypeRecord.offset = dataPointer;
					currentTable.variableTable.put(id, newTypeRecord);
					dataPointer++;
				} else {
					code.emitST(RegisterConstant.AC, currentOffset,
							RegisterConstant.ZERO, lineNbr++,
							"store int into previous used static data");
				}

			} else if (type.equals(TypeRecord.boolType)) {
				if (currentOffset == 0) {
					code.emitST(RegisterConstant.AC, dataPointer,
							RegisterConstant.ZERO, lineNbr++,
							"store bool into static data");
					TypeRecord newTypeRecord = new TypeRecord(BasicType.BOOL);
					newTypeRecord.offset = dataPointer;
					currentTable.variableTable.put(id, newTypeRecord);
					dataPointer++;
				} else {
					code.emitST(RegisterConstant.AC, currentOffset,
							RegisterConstant.ZERO, lineNbr++,
							"store bool into previous used static data");
				}
			} else if (type.equals(TypeRecord.strType)) {
				int offset = dataPointer;
				type.length = expType.length;
				System.out.println("datapointer: " + dataPointer);
				if (stringTable.containsKey(expType.token.image)) {
					TypeRecord newTypeRecord = new TypeRecord(BasicType.STRING);
					newTypeRecord.offset = stringTable.get(expType.token.image);
					newTypeRecord.length = expType.length;
					currentTable.variableTable.put(id, newTypeRecord);
					return data;
				}

				stringTable.put(expType.token.image, dataPointer);
				System.out.println("adding string " + expType.token.image
						+ " with offset " + dataPointer);
				code.emitST(RegisterConstant.AC, dataPointer,
						RegisterConstant.ZERO, lineNbr++,
						"store str length into static data");
				dataPointer++;

				code.emitLDC(RegisterConstant.AC3, dataPointer,
						RegisterConstant.ZERO, lineNbr++,
						"store datapointer into ac3");

				lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
						"pop char");

				code.emitST(RegisterConstant.AC2, 0, RegisterConstant.AC3,
						lineNbr++, "save char into static data");
				code.emitLDA(RegisterConstant.AC3, 1, RegisterConstant.AC3,
						lineNbr++, "increase datapointer");
				code.emitLDA(RegisterConstant.AC, -1, RegisterConstant.AC,
						lineNbr++, "decrease length of remaining string");
				code.emitJNE(RegisterConstant.AC, -6, RegisterConstant.PC,
						lineNbr++, "continue print if not yet finish");

				TypeRecord newTypeRecord = new TypeRecord(BasicType.STRING);
				newTypeRecord.offset = offset;
				newTypeRecord.length = expType.length;
				currentTable.variableTable.put(id, newTypeRecord);
				dataPointer += expType.length;
				System.out.println("length: " + expType.length);
				System.out.println("dp: " + dataPointer);
				System.out.println("offset: " + offset);
			}
		}
		return data;
	}

	@Override
	public Object visit(ASTlvalue node, Object data) {

		String id = node.getFirstToken().image;
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		if (node.isArray) { // array
			debug("original type: " + node.originalType);
			debug("original type dim: " + node.originalType.getDimension());
			for (int i = node.jjtGetNumChildren() - 1; i >= 0; i--) {
				SimpleNode exp = (SimpleNode) node.jjtGetChild(i);
				exp.jjtAccept(this, data);
				lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
						"push array index");

			}
			code.emitLDC(RegisterConstant.AC, node.originalType.getDimension(),
					RegisterConstant.ZERO, lineNbr++, "push array dimension");

		}

		if (!node.isAssignment) {
			TypeRecord idType = null;
			try {
				idType = currentTable.lookupId(node.getFirstToken());
			} catch (SymbolTableException e) {
				e.printStackTrace();
			}
			if (idType.offset != 0) {
				if (node.isArray) { // array
					int totalSize = TypeRecord.arraySize(type);
					TypeRecord currentRecord = node.originalType;
					if (idType.isGlobal) {
						emitCodeForGlobalArray(node, id);
					}
				} else {
					if (type.equals(TypeRecord.intType)
							|| type.equals(TypeRecord.boolType)) {
						if (idType.isGlobal) {
							System.out.println("idtype is global");
							code.emitLD(RegisterConstant.AC, idType.offset,
									RegisterConstant.ZERO, lineNbr++,
									"load int/bool from static data");
						} else {
							System.out.println("idtype is temporary");
							SymbolTable tempSymbolTable = currentTable;
							code.emitLDA(RegisterConstant.AC, 0,
									RegisterConstant.FP, lineNbr++,
									"load fp into ac");
							while (!tempSymbolTable.variableTable
									.containsKey(id)) {
								System.out.println("not found");
								code.emitLD(RegisterConstant.AC, 0,
										RegisterConstant.AC, lineNbr++,
										"load upper level fp");
								tempSymbolTable = tempSymbolTable.parent;
							}
							code.emitLD(RegisterConstant.AC, idType.offset,
									RegisterConstant.AC, lineNbr++,
									"load int/bool from stack");
						}

					} else if (type.equals(TypeRecord.strType)) {
						code.emitLD(RegisterConstant.AC, idType.offset,
								RegisterConstant.ZERO, lineNbr++,
								"load str length from static data");

						code.emitLDC(RegisterConstant.AC3, idType.offset
								+ idType.length, RegisterConstant.ZERO,
								lineNbr++, "load offset into ac3");

						code.emitLD(RegisterConstant.AC2, 0,
								RegisterConstant.AC3, lineNbr++,
								"load char into ac2");
						lineNbr = code.emitPUSH(RegisterConstant.AC2, lineNbr,
								"push char");

						code
								.emitLDA(RegisterConstant.AC3, -1,
										RegisterConstant.AC3, lineNbr++,
										"increase ac3");
						code.emitLDA(RegisterConstant.AC, -1,
								RegisterConstant.AC, lineNbr++,
								"decrease str length");
						code.emitJNE(RegisterConstant.AC, -6,
								RegisterConstant.PC, lineNbr++,
								"jump back if str not yet finish");
						code.emitLD(RegisterConstant.AC, idType.offset,
								RegisterConstant.ZERO, lineNbr++,
								"load str length from static data");
					}
					super.visit(node, data);
				}
			}

		}
		return data;
	}

	private void emitCodeForGlobalArray(ASTlvalue node, String id) {
		TypeRecord currentRecord = node.originalType;
		code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO,
				lineNbr++, "load 0 to ac");
		for (int i = 0; i < node.jjtGetNumChildren(); i++) {
			int sizeOfSubArray = TypeRecord
					.arraySize(currentRecord.underType);
			System.out.println("subarray size: " + sizeOfSubArray);
			lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
					"pop index");

			code.emitLDC(RegisterConstant.AC3, sizeOfSubArray,
					RegisterConstant.ZERO, lineNbr++,
					"load size of subarray");
			code.emitMUL(RegisterConstant.AC2,
					RegisterConstant.AC2, RegisterConstant.AC3,
					lineNbr++, "compute " + i + " dim");
			code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
					RegisterConstant.AC2, lineNbr++, "add result");

			currentRecord = currentRecord.underType;
		}

		code.emitLDC(RegisterConstant.AC2,
				currentTable.variableTable.get(id).offset,
				RegisterConstant.ZERO, lineNbr++,
				"load offset into ac2");
		code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
				RegisterConstant.AC2, lineNbr++,
				"compute final offset");
		code.emitLD(RegisterConstant.AC, 0, RegisterConstant.AC,
				lineNbr++, "load data from array");
	}

	@Override
	public Object visit(ASTdostm node, Object data) {
		System.out.println("do children: " + node.jjtGetNumChildren());
		SimpleNode exp = (SimpleNode) node.jjtGetChild(0);
		int loopstartLine = lineNbr;
		System.out.println("loopstart: " + loopstartLine);
		exp.jjtAccept(this, data);
		int saveLineNbr = lineNbr;
		lineNbr++;

		SimpleNode stms = (SimpleNode) node.jjtGetChild(1);
		stms.jjtAccept(this, data);
		code.emitLDA(RegisterConstant.PC, -(lineNbr - loopstartLine + 1),
				RegisterConstant.PC, lineNbr++, "jump back to loop start");

		code.emitJEQ(RegisterConstant.AC, lineNbr - saveLineNbr - 1,
				RegisterConstant.PC, saveLineNbr, "jump out of the do loop");
		return data;
	}

	@Override
	public Object visit(ASTfa node, Object data) {
		System.out.println("fa children: " + node.jjtGetNumChildren());
		SymbolTable parent = currentTable;
		currentTable = new SymbolTable();
		currentTable.parent = parent;
		String loopid = node.getFirstToken().image;

		lineNbr = code.emitPUSH(RegisterConstant.FP, lineNbr, "push fp");
		code.emitLDA(RegisterConstant.FP, 0, RegisterConstant.SP, lineNbr++,
				"set fp to sp");

		TypeRecord lowType = new TypeRecord(BasicType.INT, true);
		lowType.offset = -1;
		lowType.isGlobal = false;
		currentTable.variableTable.put(loopid, lowType);

		SimpleNode lowNode = (SimpleNode) node.jjtGetChild(0);
		lowNode.jjtAccept(this, data);
		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr, "push low");

		SimpleNode hiNode = (SimpleNode) node.jjtGetChild(1);
		TypeRecord hiType = new TypeRecord(BasicType.INT, false);
		hiType.offset = -2;
		hiNode.jjtAccept(this, data);
		currentTable.variableTable.put(loopid + "-hi", hiType);
		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr, "push hi");

		int loopStart = lineNbr;
		code.emitLD(RegisterConstant.AC, hiType.offset, RegisterConstant.FP,
				lineNbr++, "load hi into ac ");
		code.emitLD(RegisterConstant.AC2, lowType.offset, RegisterConstant.FP,
				lineNbr++, "load low into ac2 ");
		code.emitSUB(RegisterConstant.AC, RegisterConstant.AC,
				RegisterConstant.AC2, lineNbr++, "subtract hi with low");
		int saveLineNbr = lineNbr;
		lineNbr++;

		SimpleNode stmsNode = (SimpleNode) node.jjtGetChild(2);
		stmsNode.jjtAccept(this, data);

		code.emitLD(RegisterConstant.AC, lowType.offset, RegisterConstant.FP,
				lineNbr++, "load low into ac");
		code.emitLDA(RegisterConstant.AC, 1, RegisterConstant.AC, lineNbr++,
				"decrease low");
		code.emitST(RegisterConstant.AC, lowType.offset, RegisterConstant.FP,
				lineNbr++, "save low");
		code.emitLDA(RegisterConstant.PC, -(lineNbr - loopStart + 1),
				RegisterConstant.PC, lineNbr++, "jump back to loop start");

		code.emitJLT(RegisterConstant.AC, lineNbr - saveLineNbr - 1,
				RegisterConstant.PC, saveLineNbr, "jump out of the fa loop");

		code.emitLDA(RegisterConstant.SP, 0, RegisterConstant.FP, lineNbr++,
				"change sp to fp + 1");
		lineNbr = code.emitPOP(RegisterConstant.FP, lineNbr, "restore fp");

		currentTable = currentTable.parent;
		return data;
	}

}
