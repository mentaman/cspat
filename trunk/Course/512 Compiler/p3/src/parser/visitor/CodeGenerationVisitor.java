package parser.visitor;

import java.io.FileWriter;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.Stack;

import javax.print.attribute.Size2DSyntax;

import org.hamcrest.core.Is;
import org.hamcrest.core.IsAnything;

import com.sun.corba.se.impl.encoding.OSFCodeSetRegistry.Entry;
import com.sun.org.apache.bcel.internal.generic.StoreInstruction;
import com.sun.xml.internal.bind.v2.schemagen.xmlschema.List;

import parser.*;
import parser.generator.TMCodeGenerator;
import table.*;
import type.BasicType;
import type.ParaType;
import type.ProcType;
import type.TypeRecord;

public class CodeGenerationVisitor extends CascadeVisitor {

	private int lineNbr = 0;
	private int dataPointer = 1;
	private SymbolTable globalTable;
	private SymbolTable currentTable;
	private TMCodeGenerator code = new TMCodeGenerator();
	private boolean debug = false;
	private HashMap<String, Integer> stringTable = new HashMap<String, Integer>();
	private Stack<ArrayList<Integer>> breakStatements = new Stack<ArrayList<Integer>>();
	private boolean isLoadingParameter = false;
	private Stack<ArrayList<Integer>> returnStatements = new Stack<ArrayList<Integer>>();
	private String arrayErrorMessage;
	private int arrayErrorHandleLineNbr;
	private int loopLevel = 0;
	private String outOfMemoryMessage;
	private int memoryErrorHandleLineNbr;

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

	public CodeGenerationVisitor(SymbolTable globalTable,
			HashMap<String, Integer> stringTable) {
		super();
		this.globalTable = globalTable;
		globalTable.isGlobal = true;
		currentTable = globalTable;
		this.stringTable = stringTable;
	}

	@Override
	public Object visit(ASTprogram node, Object data) {

		System.out.println("before generating stringtable: " + stringTable);
		System.out.println("before generating currenttable: " + currentTable);
		emitErrorString();
		storeStringAndComputeOffset();
		storeGlobalVariableAndComputeOffset();

		code.emitLD(RegisterConstant.SP, 0, RegisterConstant.ZERO, lineNbr++,
				"save stack pointer");
		code.emitLD(RegisterConstant.FP, 0, RegisterConstant.ZERO, lineNbr++,
				"save frame pointer");

		int saveLineNbr = lineNbr; // save line for jumping to main function
		lineNbr++;

		code.dataPointer = dataPointer;
		emitErrorHandleCode();
		System.out.println("arrayErrorHandleLineNbr: "
				+ arrayErrorHandleLineNbr);
		System.out.println("memoryErrorHandleLineNbr: "
				+ memoryErrorHandleLineNbr);
		code.memoryErrorLineNbr = memoryErrorHandleLineNbr;

		System.out.println("datapointer: " + dataPointer);
		System.out.println("memoryErrorLineNbr: " + memoryErrorHandleLineNbr);

		System.out.println("after generating stringtable: " + stringTable);
		System.out.println("after generating currenttable: " + currentTable);

		currentTable = globalTable;

		emitIntFunction();

		// super.visit(node, data);
		for (int i = 0; i < node.jjtGetNumChildren(); i++) {
			SimpleNode childNode = (SimpleNode) node.jjtGetChild(i);
			if (childNode instanceof ASTstms) {
				code.emitLDA(RegisterConstant.PC, lineNbr,
						RegisterConstant.ZERO, saveLineNbr,
						"jump to start of the program");
			}
			childNode.jjtAccept(this, data);
		}

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

	private void emitErrorHandleCode() {
		arrayErrorHandleLineNbr = lineNbr;
		code.emitLDC(RegisterConstant.AC, stringTable.get(arrayErrorMessage),
				RegisterConstant.ZERO, lineNbr++,
				"load array error str address");
		writeString();
		code.emitOUTNL(lineNbr++, "emit newline");
		code.emitHALT(lineNbr++, "stop because of array error");

		memoryErrorHandleLineNbr = lineNbr;
		code.emitLDC(RegisterConstant.AC, stringTable.get(outOfMemoryMessage),
				RegisterConstant.ZERO, lineNbr++,
				"load out of memory str address");
		writeString();
		code.emitOUTNL(lineNbr++, "emit newline");
		code.emitHALT(lineNbr++, "stop because of out of memory error");
	}

	private void emitErrorString() {
		arrayErrorMessage = "\"array index error!\"";
		stringTable.put(arrayErrorMessage, 0);
		outOfMemoryMessage = "\"out of memory\"";
		stringTable.put(outOfMemoryMessage, 0);
	}

	private void emitIntFunction() {
		ProcType intProc = null;
		try {
			intProc = currentTable.lookupProc("int");
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}
		intProc.startLineNbr = lineNbr;
		code.emitLD(RegisterConstant.AC, -3, RegisterConstant.FP, lineNbr++,
				"load str offset");
		code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC, lineNbr++,
				"load str length");
		code.emitLDC(RegisterConstant.AC3, 0, RegisterConstant.ZERO, lineNbr++,
				"load 0 as initial result");
		lineNbr = code.emitPUSH(RegisterConstant.AC3, lineNbr, "push 0");

		int saveLineNbr = lineNbr;
		lineNbr = code.emitPOP(RegisterConstant.AC3, lineNbr,
				"pop result into AC3");
		code.emitLDC(RegisterConstant.AC4, 10, RegisterConstant.ZERO,
				lineNbr++, "load 10 into ac4");
		code.emitMUL(RegisterConstant.AC3, RegisterConstant.AC3,
				RegisterConstant.AC4, lineNbr++, "mul result with 10");
		lineNbr = code.emitPUSH(RegisterConstant.AC3, lineNbr, "push result");

		code.emitLDA(RegisterConstant.AC, 1, RegisterConstant.AC, lineNbr++,
				"increase str offset");
		code.emitLD(RegisterConstant.AC3, 0, RegisterConstant.AC, lineNbr++,
				"load char");
		code.emitLDC(RegisterConstant.AC4, 48, RegisterConstant.ZERO,
				lineNbr++, "load 48 into ac4");
		code.emitSUB(RegisterConstant.AC3, RegisterConstant.AC3,
				RegisterConstant.AC4, lineNbr++, "compute int value");
		lineNbr = code.emitPOP(RegisterConstant.AC4, lineNbr,
				"pop result into AC4");
		code.emitADD(RegisterConstant.AC3, RegisterConstant.AC3,
				RegisterConstant.AC4, lineNbr++, "compute result");
		lineNbr = code.emitPUSH(RegisterConstant.AC3, lineNbr, "push result");
		code.emitLDA(RegisterConstant.AC2, -1, RegisterConstant.AC2, lineNbr++,
				"decrease str length");
		code.emitJNE(RegisterConstant.AC2, saveLineNbr, RegisterConstant.ZERO,
				lineNbr++, "continue if str length");

		lineNbr = code.emitPOP(RegisterConstant.AC, lineNbr, "pop result");
		code.emitST(RegisterConstant.AC, -2, RegisterConstant.FP, lineNbr++,
				"save to return value");

		int returnAddressOffset = -1;
		int returnValueOffset = -2;
		code.emitLD(RegisterConstant.AC, returnValueOffset,
				RegisterConstant.FP, lineNbr++,
				"load int/bool/string offset as return value"); // array return
		// not supported

		code.emitLD(RegisterConstant.AC2, returnAddressOffset,
				RegisterConstant.FP, lineNbr++, "load return address");
		code.emitLDA(RegisterConstant.SP, 0, RegisterConstant.FP, lineNbr++,
				"change sp to fp + 1");
		lineNbr = code.emitPOP(RegisterConstant.FP, lineNbr, "restore fp");

		code.emitLDA(RegisterConstant.PC, 0, RegisterConstant.AC2, lineNbr++,
				"jump to the return address");

		intProc.endLineNbr = lineNbr - 1;
		// code.emit

	}

	private void storeGlobalVariableAndComputeOffset() {
		for (Map.Entry<String, TypeRecord> entry : globalTable.variableTable
				.entrySet()) {
			String id = entry.getKey();
			TypeRecord type = entry.getValue();
			type = TypeRecord.clone(type);
			type.offset = dataPointer;
			entry.setValue(type);
			if (TypeRecord.isArray(type)) {
				code.emitLDC(RegisterConstant.AC, dataPointer + 1,
						RegisterConstant.ZERO, lineNbr++,
						"store array start address: " + (dataPointer + 1));
				code.emitLDC(RegisterConstant.AC2, dataPointer,
						RegisterConstant.ZERO, lineNbr++,
						"store array offset into ac2: " + dataPointer);
				code.emitST(RegisterConstant.AC, 0, RegisterConstant.AC2,
						lineNbr++, "store array offset");
				dataPointer += TypeRecord.arraySize(type) + 1;
			} else {
				dataPointer++;
			}
		}
	}

	private void storeStringAndComputeOffset() {
		for (Map.Entry<String, Integer> entry : stringTable.entrySet()) {
			String stringValue = entry.getKey();
			int offset = entry.getValue();
			entry.setValue(dataPointer);
			int strLength = stringValue.length() - 2;
			code.emitDATA(strLength);
			code.emitSDATA(stringValue);

			dataPointer += (strLength + 1);
		}
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
			writeString();
		}

		if (node.getFirstToken().image.equals("write")) {
			code.emitOUTNL(lineNbr++, "write new line");
		}

		return data;
	}

	private void writeString() {

		code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC, lineNbr++,
				"load str length into ac2");
		code.emitJEQ(RegisterConstant.AC2, 5, RegisterConstant.PC, lineNbr++,
				"output nothing when empty");

		int nextLineNbr = lineNbr;
		code.emitLDA(RegisterConstant.AC, 1, RegisterConstant.AC, lineNbr++,
				"increase offset");
		code.emitLD(RegisterConstant.AC3, 0, RegisterConstant.AC, lineNbr++,
				"load char into ac3");

		code.emitOUTC(RegisterConstant.AC3, lineNbr++, "write char");
		code.emitLDA(RegisterConstant.AC2, -1, RegisterConstant.AC2, lineNbr++,
				"decrease length of remaining string in ac2");
		code.emitJNE(RegisterConstant.AC2, nextLineNbr - lineNbr - 1,
				RegisterConstant.PC, lineNbr++,
				"continue print if not yet finish");
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
		String stringValue = node.getFirstToken().image;
		debug("content: " + stringValue);

		if (stringValue.startsWith("'")) {
			stringValue = "\""
					+ stringValue.substring(1, stringValue.length() - 1) + "\"";
		}
		int offset = stringTable.get(stringValue);
		code.emitLDC(RegisterConstant.AC, offset, RegisterConstant.ZERO,
				lineNbr++, "load string offset " + offset);
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTplusMinus node, Object data) {
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);
		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
				"push first child's value");
		int saveLineNbr = 0;
		if (type.equals(TypeRecord.boolType)) {
			saveLineNbr = lineNbr;
			lineNbr++;
		}

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
				code.emitJNE(RegisterConstant.AC, lineNbr - saveLineNbr - 1,
						RegisterConstant.PC, saveLineNbr, "short circuit");
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
		Token token = node.getFirstToken();
		String operator = token.image;
		SimpleNode firstChildNode = (SimpleNode) node.jjtGetChild(0);
		firstChildNode.jjtAccept(this, data);
		int saveLineNbr = 0;
		if (type.equals(TypeRecord.boolType)) {
			saveLineNbr = lineNbr;
			lineNbr++;
		}

		lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
				"push first child's value");

		SimpleNode secondChildNode = (SimpleNode) node.jjtGetChild(1);
		secondChildNode.jjtAccept(this, data);
		lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
				"pop first child's value");

		if (operator.equals("*")) {
			code.emitMUL(RegisterConstant.AC, RegisterConstant.AC,
					RegisterConstant.AC2, lineNbr++, "multiply two children");
			if (type.equals(TypeRecord.boolType)) {
				code.emitJEQ(RegisterConstant.AC, lineNbr - saveLineNbr - 1,
						RegisterConstant.PC, saveLineNbr, "short circuit");
			}

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
			if (node.hasElse || node.hasElseIf) { // save line number for jump
				// to the end
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

		Token idToken = lvalue.getFirstToken();
		String id = idToken.image;
		TypeRecord type = (TypeRecord) lvalue.jjtGetValue();
		lvalue.jjtAccept(this, data);

		SimpleNode exp = (SimpleNode) node.jjtGetChild(1);
		TypeRecord expType = (TypeRecord) exp.jjtGetValue();
		int currentOffset = 0;
		TypeRecord lookupType = null;
		try {
			lookupType = currentTable.lookupId(idToken);
			currentOffset = lookupType.offset;
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}
		// debug("currentTable: " + currentTable);
		if (lvalue.isArray) { // array
			System.out.println("original type: " + lvalue.originalType);
			int offset = currentOffset;
			int totalSize = TypeRecord.arraySize(type);
			TypeRecord currentRecord = lvalue.originalType;
			code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO,
					lineNbr++, "load 0 to ac");
			Integer[] sizes = TypeRecord.dimensionSizes(currentRecord);
			for (int i = 0; i < lvalue.jjtGetNumChildren(); i++) {
				int sizeOfSubArray = TypeRecord
						.arraySize(currentRecord.underType);
				System.out.println("subarray size: " + sizeOfSubArray);
				lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
						"pop index");
				arrayRuntimeIndexCheck(sizes, i);

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

			if (lookupType.isGlobal) {
				code.emitLD(RegisterConstant.AC2, offset,
						RegisterConstant.ZERO, lineNbr++,
						"load offset into ac2");
			} else {
				storeCorrespondingFPintoAC2(id);
				code.emitLD(RegisterConstant.AC2, lookupType.offset,
						RegisterConstant.AC2, lineNbr++,
						"load local offset into ac2");
			}

			code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
					RegisterConstant.AC2, lineNbr++, "compute final offset");
			lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
					"push final offset");

			exp.jjtAccept(this, data);
			lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr,
					"pop final offset");

			code.emitST(RegisterConstant.AC, 0, RegisterConstant.AC2,
					lineNbr++, "store value into array static data");

		} else {
			exp.jjtAccept(this, data);
			System.out.println("currentoffset: " + currentOffset);
			lookupType.length = expType.length;

			if (lookupType.isGlobal) {
				code.emitST(RegisterConstant.AC, currentOffset,
						RegisterConstant.ZERO, lineNbr++,
						"store int/bool/string into previous used static data");
			} else {
				storeCorrespondingFPintoAC2(id);
				code.emitST(RegisterConstant.AC, currentOffset,
						RegisterConstant.AC2, lineNbr++,
						"store int/bool/string into stack");
			}

			// } else if (lookupType.equals(TypeRecord.strType)) {
			// int offset = dataPointer;
			// lookupType.length = expType.length;
			// if (lookupType.isGlobal) {
			// TypeRecord newTypeRecord = new TypeRecord(BasicType.STRING);
			// newTypeRecord.offset = offset;
			// newTypeRecord.length = expType.length;
			// currentTable.variableTable.put(id, newTypeRecord);
			// } else {
			// storeCorrespondingFPintoAC2(id);
			// code.emitLDC(RegisterConstant.AC, offset,
			// RegisterConstant.ZERO, lineNbr++,
			// "load string data offset into ac");
			// code.emitST(RegisterConstant.AC, lookupType.offset,
			// RegisterConstant.AC2, lineNbr++,
			// "store string offset into stack");
			// }
			//
			// code.emitST(RegisterConstant.AC, currentOffset,
			// RegisterConstant.AC2, lineNbr++,
			// "store int/bool into stack");

			// System.out.println("datapointer: " + dataPointer);
			// Integer lookupOffset = stringTable.get(expType.token.image);
			// if (lookupType.isGlobal) {
			// TypeRecord newTypeRecord = new TypeRecord(BasicType.STRING);
			// newTypeRecord.offset = lookupOffset;
			// newTypeRecord.length = expType.length;
			// currentTable.variableTable.put(id, newTypeRecord);
			// } else {
			// storeCorrespondingFPintoAC2(id);
			// code.emitLDC(RegisterConstant.AC, lookupOffset,
			// RegisterConstant.ZERO, lineNbr++,
			// "load string data offset into ac");
			// code.emitST(RegisterConstant.AC, lookupType.offset,
			// RegisterConstant.AC2, lineNbr++,
			// "store string offset into stack");
			// }
			// return data;

			// storeStringToStaticData(id, expType);

		}
		return data;
	}

	// private void storeStringToStaticData(String id, TypeRecord expType) {
	// stringTable.put(expType.token.image, dataPointer);
	// System.out.println("adding string " + expType.token.image
	// + " with offset " + dataPointer);
	// code.emitST(RegisterConstant.AC, dataPointer, RegisterConstant.ZERO,
	// lineNbr++, "store str length into static data");
	// dataPointer++;
	//
	// code.emitLDC(RegisterConstant.AC3, dataPointer, RegisterConstant.ZERO,
	// lineNbr++, "store datapointer into ac3");
	//
	// lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr, "pop char");
	//
	// code.emitST(RegisterConstant.AC2, 0, RegisterConstant.AC3, lineNbr++,
	// "save char into static data");
	// code.emitLDA(RegisterConstant.AC3, 1, RegisterConstant.AC3, lineNbr++,
	// "increase datapointer");
	// code.emitLDA(RegisterConstant.AC, -1, RegisterConstant.AC, lineNbr++,
	// "decrease length of remaining string");
	// code.emitJNE(RegisterConstant.AC, -6, RegisterConstant.PC, lineNbr++,
	// "continue print if not yet finish");
	//
	// dataPointer += expType.length;
	// System.out.println("length: " + expType.length);
	// System.out.println("dp: " + dataPointer);
	//
	// }

	@Override
	public Object visit(ASTlvalue node, Object data) {

		Token idToken = node.getFirstToken();
		String id = idToken.image;
		TypeRecord type = (TypeRecord) node.jjtGetValue();
		TypeRecord idType = null;
		try {
			idType = currentTable.lookupId(idToken);
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}

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

			if (idType.offset != 0) {
				if (node.isArray) { // array
					int totalSize = TypeRecord.arraySize(type);
					TypeRecord currentRecord = node.originalType;
					if (TypeRecord.isArray(type)) {
						computeArrayMemoryAddress(node, id, idType, idToken);
					} else {
						emitCodeForArrayValueAccess(node, id, idType, idToken);
					}

				} else {

					if (idType.isGlobal) {
						System.out.println("idtype is global");
						code.emitLD(RegisterConstant.AC, idType.offset,
								RegisterConstant.ZERO, lineNbr++,
								"load int/bool/str from static data");
					} else {
						storeCorrespondingFPintoAC2(id);
						code.emitLD(RegisterConstant.AC, idType.offset,
								RegisterConstant.AC2, lineNbr++,
								"load int/bool/str from stack");
					}

					super.visit(node, data);
				}
			}

		}
		return data;
	}

	private void storeCorrespondingFPintoAC2(String id) {
		System.out.println("idtype is temporary");
		SymbolTable tempSymbolTable = currentTable;
		code.emitLDA(RegisterConstant.AC2, 0, RegisterConstant.FP, lineNbr++,
				"load fp into ac2");
		if (isLoadingParameter) {
			code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC2,
					lineNbr++, "load upper level fp into ac2");
		}
		while (!tempSymbolTable.variableTable.containsKey(id)) {
			System.out.println("not found");
			code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC2,
					lineNbr++, "load upper level fp into ac2");
			tempSymbolTable = tempSymbolTable.parent;
		}
	}

	// private void loadStringIntoStack(TypeRecord idType, String id) {
	// if (idType.isGlobal) {
	// code.emitLD(RegisterConstant.AC, idType.offset,
	// RegisterConstant.ZERO, lineNbr++,
	// "load str length from static data");
	//
	// code.emitLDC(RegisterConstant.AC3, idType.offset + idType.length,
	// RegisterConstant.ZERO, lineNbr++, "load offset into ac3");
	//
	// code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC3,
	// lineNbr++, "load char into ac2");
	// lineNbr = code.emitPUSH(RegisterConstant.AC2, lineNbr, "push char");
	//
	// code.emitLDA(RegisterConstant.AC3, -1, RegisterConstant.AC3,
	// lineNbr++, "decrease ac3");
	// code.emitLDA(RegisterConstant.AC, -1, RegisterConstant.AC,
	// lineNbr++, "decrease str length");
	// code.emitJNE(RegisterConstant.AC, -6, RegisterConstant.PC,
	// lineNbr++, "jump back if str not yet finish");
	// code.emitLD(RegisterConstant.AC, idType.offset,
	// RegisterConstant.ZERO, lineNbr++,
	// "load str length from static data");
	// } else {
	// storeCorrespondingFPintoAC2(id);
	// code.emitST(RegisterConstant.AC4, idType.offset,
	// RegisterConstant.AC2, lineNbr++,
	// "store str address into ac4");
	//
	// code.emitLD(RegisterConstant.AC, 0, RegisterConstant.AC4,
	// lineNbr++, "load str length from address stored in ac");
	// code
	// .emitADD(RegisterConstant.AC3, RegisterConstant.AC,
	// RegisterConstant.AC4, lineNbr++,
	// "load str offset into ac3");
	// //
	// // code.emitLDC(RegisterConstant.AC3, idType.offset + idType.length,
	// // RegisterConstant.ZERO, lineNbr++, "load offset into ac3");
	//
	// code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC3,
	// lineNbr++, "load char into ac2");
	// lineNbr = code.emitPUSH(RegisterConstant.AC2, lineNbr, "push char");
	//
	// code.emitLDA(RegisterConstant.AC3, -1, RegisterConstant.AC3,
	// lineNbr++, "decrease ac3");
	// code.emitLDA(RegisterConstant.AC, -1, RegisterConstant.AC,
	// lineNbr++, "decrease str length");
	// code.emitJNE(RegisterConstant.AC, -6, RegisterConstant.PC,
	// lineNbr++, "jump back if str not yet finish");
	//
	// code.emitLD(RegisterConstant.AC, 0, RegisterConstant.AC4,
	// lineNbr++, "load str length from address stored in ac3");
	// }
	//
	// }

	private void emitCodeForArrayValueAccess(ASTlvalue node, String id,
			TypeRecord idType, Token idToken) {
		computeArrayMemoryAddress(node, id, idType, idToken);
		code.emitLD(RegisterConstant.AC, 0, RegisterConstant.AC, lineNbr++,
				"load data from array");
	}

	private void computeArrayMemoryAddress(ASTlvalue node, String id,
			TypeRecord idType, Token idToken) {
		TypeRecord currentRecord = node.originalType;
		code.emitLDC(RegisterConstant.AC, 0, RegisterConstant.ZERO, lineNbr++,
				"load 0 to ac");
		Integer[] sizes = TypeRecord.dimensionSizes(currentRecord);
		for (int i = 0; i < node.jjtGetNumChildren(); i++) {
			int sizeOfSubArray = TypeRecord.arraySize(currentRecord.underType);
			System.out.println("subarray size: " + sizeOfSubArray);
			lineNbr = code.emitPOP(RegisterConstant.AC2, lineNbr, "pop index");

			arrayRuntimeIndexCheck(sizes, i);

			code.emitLDC(RegisterConstant.AC3, sizeOfSubArray,
					RegisterConstant.ZERO, lineNbr++, "load size of subarray");
			code.emitMUL(RegisterConstant.AC2, RegisterConstant.AC2,
					RegisterConstant.AC3, lineNbr++, "compute " + i + " dim");
			code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
					RegisterConstant.AC2, lineNbr++, "add result");

			currentRecord = currentRecord.underType;
		}

		TypeRecord lookupId = null;
		try {
			lookupId = currentTable.lookupId(idToken);
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}

		if (idType.isGlobal) {
			code.emitLD(RegisterConstant.AC2, lookupId.offset,
					RegisterConstant.ZERO, lineNbr++,
					"load global offset into ac2");
		} else {

			storeCorrespondingFPintoAC2(id);
			if (debug) {
				System.out.println("idTOKEN: " + idToken);
				code.emitOUT(RegisterConstant.AC2, lineNbr++, "fp");
			}

			System.out.println("local lookup offset: " + lookupId.offset);
			code.emitLD(RegisterConstant.AC2, lookupId.offset,
					RegisterConstant.AC2, lineNbr++,
					"load local offset into ac2");
			if (debug) {
				code.emitOUT(RegisterConstant.AC2, lineNbr++,
						"load array absolute address");
			}

		}

		code.emitADD(RegisterConstant.AC, RegisterConstant.AC,
				RegisterConstant.AC2, lineNbr++, "compute final offset");
	}

	private void arrayRuntimeIndexCheck(Integer[] sizes, int i) {
		code.emitJLT(RegisterConstant.AC2, arrayErrorHandleLineNbr,
				RegisterConstant.ZERO, lineNbr++, "jump if index less than 0");
		code.emitLDC(RegisterConstant.AC4, sizes[i], RegisterConstant.ZERO,
				lineNbr++, "load array size");
		code.emitSUB(RegisterConstant.AC4, RegisterConstant.AC4,
				RegisterConstant.AC2, lineNbr++, "sub max size with index");
		code.emitJLE(RegisterConstant.AC4, arrayErrorHandleLineNbr,
				RegisterConstant.ZERO, lineNbr++,
				"jump if index greater than size - 1");
	}

	@Override
	public Object visit(ASTdostm node, Object data) {
		System.out.println("do children: " + node.jjtGetNumChildren());
		SimpleNode exp = (SimpleNode) node.jjtGetChild(0);
		int loopstartLine = lineNbr;
		System.out.println("loopstart: " + loopstartLine);
		breakStatements.push(new ArrayList<Integer>());
		exp.jjtAccept(this, data);
		int saveLineNbr = lineNbr;
		lineNbr++;

		SimpleNode stms = (SimpleNode) node.jjtGetChild(1);
		stms.jjtAccept(this, data);
		code.emitLDA(RegisterConstant.PC, -(lineNbr - loopstartLine + 1),
				RegisterConstant.PC, lineNbr++, "jump back to loop start");

		code.emitJEQ(RegisterConstant.AC, lineNbr - saveLineNbr - 1,
				RegisterConstant.PC, saveLineNbr, "jump out of the do loop");
		ArrayList<Integer> currentBreaks = breakStatements.pop();
		for (Integer breakLineNbr : currentBreaks) {
			code.emitLDA(RegisterConstant.PC, lineNbr - breakLineNbr - 1,
					RegisterConstant.PC, breakLineNbr,
					"break -> jump out of the do loop");
		}
		return data;
	}

	@Override
	public Object visit(ASTfa node, Object data) {
		System.out.println("fa children: " + node.jjtGetNumChildren());
		SymbolTable parent = currentTable;
		currentTable = new SymbolTable();
		currentTable.parent = parent;
		breakStatements.push(new ArrayList<Integer>());

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

		loopLevel++;
		SimpleNode stmsNode = (SimpleNode) node.jjtGetChild(2);
		stmsNode.jjtAccept(this, data);
		loopLevel--;
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

		ArrayList<Integer> currentBreaks = breakStatements.pop();
		for (Integer breakLineNbr : currentBreaks) {
			code.emitLDA(RegisterConstant.PC, lineNbr - breakLineNbr - 1,
					RegisterConstant.PC, breakLineNbr,
					"break -> jump out of the do loop");
		}

		code.emitLDA(RegisterConstant.SP, 0, RegisterConstant.FP, lineNbr++,
				"change sp to fp + 1");
		lineNbr = code.emitPOP(RegisterConstant.FP, lineNbr, "restore fp");

		currentTable = currentTable.parent;
		return data;
	}

	@Override
	public Object visit(ASTexit_stm node, Object data) {
		code.emitHALT(lineNbr++, "exit program");
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTbreak_stm node, Object data) {
		ArrayList<Integer> breaks = breakStatements.peek();
		breaks.add(lineNbr);
		lineNbr++;
		return super.visit(node, data);
	}

	@Override
	public Object visit(ASTproc node, Object data) {
		System.out.println("in astproc");
		Token idToken = node.getFirstToken();
		ProcType procType = null;
		SymbolTable parent = currentTable;
		currentTable = new SymbolTable();
		currentTable.parent = parent;
		returnStatements.push(new ArrayList<Integer>());
		try {
			procType = currentTable.lookupProc(idToken);
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}
		currentTable.typeTable = procType.typeTable;

		TypeRecord returnType = TypeRecord.clone(procType.returnType);

		int currentOffset = -2;
		int returnValueOffset = currentOffset;
		
		if (returnType != null) {
			returnType.isGlobal = false;
			returnType.offset = returnValueOffset;
		}

		if (!returnType.equals(TypeRecord.voidType)) {
			currentTable.variableTable.put(idToken.image, returnType);
			currentOffset--;
		}

		for (ParaType paraType : procType.paraTypes) {
			TypeRecord type = TypeRecord.clone(paraType.type);
			type.isGlobal = false;
			type.offset = currentOffset--;
			currentTable.variableTable.put(paraType.id.image, type);
		}

		Set<TypeRecord> types = procType.localVariablesHashMap.keySet();
		for (TypeRecord keyType : types) {
			ArrayList<Token> tokens = procType.localVariablesHashMap
					.get(keyType);
			for (Token localIdToken : tokens) {
				TypeRecord type = TypeRecord.clone(keyType);
				type.isGlobal = false;
				if (TypeRecord.isArray(keyType)) {
					currentOffset = currentOffset
							- TypeRecord.arraySize(keyType);
				}
				type.offset = currentOffset--;
				currentTable.variableTable.put(localIdToken.image, type);
			}
		}

		procType.startLineNbr = lineNbr;
		System.out.println("before proc: " + idToken + " current table: "
				+ currentTable);
		loopLevel = 0;

		for (int i = 0; i < node.jjtGetNumChildren(); i++) {
			SimpleNode child = (SimpleNode) node.jjtGetChild(i);
			System.out.println("child node: " + child);
			child.jjtAccept(this, data);
		}

		ArrayList<Integer> returnList = returnStatements.pop();
		for (int returnLine : returnList) {
			code.emitLDA(RegisterConstant.PC, lineNbr - returnLine - 1,
					RegisterConstant.PC, returnLine, "return procedure call");
		}
		System.out.println("return type: " + returnType);
		int returnAddressOffset = -1;

		code.emitLD(RegisterConstant.AC, returnValueOffset,
				RegisterConstant.FP, lineNbr++,
				"load int/bool/string offset as return value"); // array return
		// not supported

		code.emitLD(RegisterConstant.AC2, returnAddressOffset,
				RegisterConstant.FP, lineNbr++, "load return address");
		code.emitLDA(RegisterConstant.SP, 0, RegisterConstant.FP, lineNbr++,
				"change sp to fp + 1");
		lineNbr = code.emitPOP(RegisterConstant.FP, lineNbr, "restore fp");

		code.emitLDA(RegisterConstant.PC, 0, RegisterConstant.AC2, lineNbr++,
				"jump to the return address");

		procType.endLineNbr = lineNbr - 1;
		System.out.println("proc: " + procType);
		System.out.println("end of proc linenbr: " + lineNbr);
		currentTable = currentTable.parent;

		return data;
	}

	@Override
	public Object visit(ASTprocedureCall node, Object data) {
		Token idToken = node.getFirstToken();
		ProcType procType = null;
		try {
			procType = currentTable.lookupProc(idToken);
			System.out.println("procedure call: " + procType);
		} catch (SymbolTableException e) {
			e.printStackTrace();
		}

		TypeRecord returnType = TypeRecord.clone(procType.returnType);

		lineNbr = code.emitPUSH(RegisterConstant.FP, lineNbr, "push fp");
		code.emitLDA(RegisterConstant.FP, 0, RegisterConstant.SP, lineNbr++,
				"set fp to sp");

		int returnLineNbr = lineNbr; // save for backpatching push return
		// address
		lineNbr += 6; // 2 for push return address

		int currentOffset = -2; // -1 is for return address
		if (!procType.returnType.equals(TypeRecord.voidType)) {
			lineNbr = code.emitPUSH(RegisterConstant.ZERO, lineNbr,
					"push zero as return value");
			currentOffset--;
		}

		for (int i = 0; i < procType.paraTypes.size(); i++) {
			ParaType paraType = procType.paraTypes.get(i);
			SimpleNode paraNode = (SimpleNode) node.jjtGetChild(i);
			isLoadingParameter = true;
			paraNode.jjtAccept(this, data);
			isLoadingParameter = false;
			TypeRecord paraNodeType = (TypeRecord) paraNode.jjtGetValue();

			if (TypeRecord.isArray(paraType.type)) {
				if (debug) {
					code.emitOUT(RegisterConstant.AC, lineNbr++,
							"before push ac");
				}
				lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
						"push array parameter");
			} else {
				lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
						"push int/bool/str parameter");

			}
			// else if (paraType.type.equals(TypeRecord.strType)) {
			// String content = paraNodeType.token.image;
			// System.out.println("before loading str parameter: "
			// + stringTable);
			// if (!stringTable.containsKey(content)) {
			// storeStringToStaticData(paraType.id.image, paraNodeType);
			// }
			// code.emitLDA(RegisterConstant.SP, paraNodeType.length,
			// RegisterConstant.SP, lineNbr++, "pop strings");
			// code.emitLDC(RegisterConstant.AC, stringTable.get(content),
			// RegisterConstant.ZERO, lineNbr++, "load string offset");
			// lineNbr = code.emitPUSH(RegisterConstant.AC, lineNbr,
			// "push str parameter");
			// }

		}

		Set<TypeRecord> types = procType.localVariablesHashMap.keySet();
		int localVariableSize = 0;
		for (TypeRecord keyType : types) {
			ArrayList<Token> tokens = procType.localVariablesHashMap
					.get(keyType);
			for (Token localIdToken : tokens) {
				if (TypeRecord.isArray(keyType)) {
					localVariableSize += TypeRecord.arraySize(keyType);
					code.emitLDC(RegisterConstant.AC, localVariableSize,
							RegisterConstant.ZERO, lineNbr++,
							"load array localVariableSize: "
									+ localVariableSize);
					code.emitSUB(RegisterConstant.AC, RegisterConstant.SP,
							RegisterConstant.AC, lineNbr++,
							"compute absolute address of the array");
					code.emitST(RegisterConstant.AC, -localVariableSize - 1,
							RegisterConstant.SP, lineNbr++,
							"store absolute array address");
					localVariableSize++;

				} else {
					localVariableSize++;
				}
			}
		}
		
		System.out.println("procType.returnType: " + procType.returnType);
		if(!procType.returnType.equals(TypeRecord.voidType)){
			code
			.emitLDA(RegisterConstant.SP, -localVariableSize - 1,
					RegisterConstant.SP, lineNbr++,
					"preserve space for local vars");
		}else{
			code
			.emitLDA(RegisterConstant.SP, -localVariableSize,
					RegisterConstant.SP, lineNbr++,
					"preserve space for local vars");
		}
		
		code.emitLDA(RegisterConstant.PC, procType.startLineNbr,
				RegisterConstant.ZERO, lineNbr++, "jump to procedure call");
		code.emitLDC(RegisterConstant.AC, lineNbr, RegisterConstant.ZERO,
				returnLineNbr++, "load return address into ac");
		code
				.emitPUSH(RegisterConstant.AC, returnLineNbr,
						"push return address");

		// if (returnType.equals(TypeRecord.strType)) {
		// code.emitLDA(RegisterConstant.AC4, 0, RegisterConstant.AC,
		// lineNbr++, "store str address into ac4 from ac");
		// code.emitLD(RegisterConstant.AC, 0, RegisterConstant.AC4,
		// lineNbr++, "load str length from address stored in ac");
		// code
		// .emitADD(RegisterConstant.AC3, RegisterConstant.AC,
		// RegisterConstant.AC4, lineNbr++,
		// "load str offset into ac3");
		// //
		// // code.emitLDC(RegisterConstant.AC3, idType.offset + idType.length,
		// // RegisterConstant.ZERO, lineNbr++, "load offset into ac3");
		//
		// code.emitLD(RegisterConstant.AC2, 0, RegisterConstant.AC3,
		// lineNbr++, "load char into ac2");
		// lineNbr = code.emitPUSH(RegisterConstant.AC2, lineNbr, "push char");
		//
		// code.emitLDA(RegisterConstant.AC3, -1, RegisterConstant.AC3,
		// lineNbr++, "decrease ac3");
		// code.emitLDA(RegisterConstant.AC, -1, RegisterConstant.AC,
		// lineNbr++, "decrease str length");
		// code.emitJNE(RegisterConstant.AC, -6, RegisterConstant.PC,
		// lineNbr++, "jump back if str not yet finish");
		//
		// code.emitLD(RegisterConstant.AC, 0, RegisterConstant.AC4,
		// lineNbr++, "load str length from address stored in ac3");
		// }
		return data;
	}

	@Override
	public Object visit(ASTreturn_stm node, Object data) {
		if (currentTable.isGlobal) {
			code.emitHALT(lineNbr++, "return in global scope");
		} else {
			int level = loopLevel;
			System.out.println("return at level " + level);
			while (level > 0) {
				code.emitLD(RegisterConstant.FP, 0, RegisterConstant.FP,
						lineNbr++, "load upper level fp");
				level--;
			}
			ArrayList<Integer> returnList = returnStatements.peek();
			returnList.add(lineNbr);
			lineNbr++;
		}
		return super.visit(node, data);
	}

}
