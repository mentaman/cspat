package parser.generator;

import parser.visitor.RegisterConstant;

public class TMCodeGenerator {

	private static String LDC = "LDC";

	private StringBuilder content = new StringBuilder();

	private static String NEWLINE = "\n";

	private final static String LD = "LD";
	private final static String HALT = "HALT";

	private final static String LDA = "LDA";
	private final static String ST = "ST";
	
	private final static String IN = "IN";

	private final static String ADD = "ADD";
	private final static String SUB = "SUB";
	private final static String MUL = "MUL";
	private final static String DIV = "DIV";
	private final static String OUT = "OUT";
	private final static String OUTB = "OUTB";
	private final static String OUTC = "OUTC";
	private final static String OUTNL = "OUTNL";
	
	private final static String JLT = "JLT";
	private final static String JLE = "JLE";
	private final static String JEQ = "JEQ";
	private final static String JNE = "JNE";
	private final static String JGE = "JGE";
	private final static String JGT = "JGT";
	private final static String DATA = ".DATA";
	private final static String SDATA = ".SDATA";

	public void emitLD(int register, int constant, int baseRegister, int lineNbr) {
		emitLD(register, constant, baseRegister, lineNbr, "");

	}

	public void emitLD(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + LD + "    " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);

	}

	@Override
	public String toString() {
		return content.toString();
	}

	public void emitHALT(int i, int j, int k, int lineNbr) {
		emitHALT(i, j, k, lineNbr, "");
	}

	public void emitHALT(int i, int j, int k, int lineNbr, String comment) {
		content.append(lineNbr + ": " + HALT + "  " + i + ", " + j + ", " + k
				+ "  " + comment);
		content.append(NEWLINE);
	}

	public void emitLDC(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + LDC + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}

	public void emitLDC(int register, int constant, int baseRegister,
			int lineNbr) {
		emitLDC(register, constant, baseRegister, lineNbr, "");
	}

	public void emitLDA(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + LDA + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}

	public void emitST(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + ST + "    " + register + ", " + constant
				+ "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}

	public int emitPUSH(int AC, int lineNbr, String comment) {
		emitLDA(RegisterConstant.SP, -1, RegisterConstant.SP, lineNbr++, comment);
		emitST(AC, 0, RegisterConstant.SP, lineNbr++, comment);
		return lineNbr;
	}

	public int emitPOP(int AC, int lineNbr, String comment) {
		emitLD(AC, 0, RegisterConstant.SP, lineNbr++, comment);
		emitLDA(RegisterConstant.SP, 1, RegisterConstant.SP, lineNbr++, comment);
		return lineNbr;
	}

	public void emitADD(int targetRegister, int register1, int register2,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + ADD + "   " + targetRegister + ", "
				+ register1 + ", " + register2 + "  " + comment);
		content.append(NEWLINE);

	}

	public void emitSUB(int targetRegister, int register1, int register2,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + SUB + "   " + targetRegister + ", "
				+ register1 + ", " + register2 + "  " + comment);
		content.append(NEWLINE);

	}

	public void emitMUL(int targetRegister, int register1, int register2,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + MUL + "   " + targetRegister + ", "
				+ register1 + ", " + register2 + "  " + comment);
		content.append(NEWLINE);

	}

	public void emitDIV(int targetRegister, int register1, int register2,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + DIV + "   " + targetRegister + ", "
				+ register1 + ", " + register2 + "  " + comment);
		content.append(NEWLINE);

	}

	public void emitHALT(int lineNbr) {
		emitHALT(0, 0, 0, lineNbr);
	}

	public void emitHALT(int lineNbr, String comment) {
		emitHALT(0, 0, 0, lineNbr, comment);

	}

	public void emitOUT(int AC, int lineNbr, String comment) {
		content.append(lineNbr + ": " + OUT + "   " + AC + ", "
				+ AC + ", " + AC + "  " + comment);
		content.append(NEWLINE);
		
	}
	
	public void emitOUTB(int AC, int lineNbr, String comment) {
		content.append(lineNbr + ": " + OUTB + "   " + AC + ", "
				+ AC + ", " + AC + "  " + comment);
		content.append(NEWLINE);
		
	}
	
	public void emitOUTC(int AC, int lineNbr, String comment) {
		content.append(lineNbr + ": " + OUTC + "   " + AC + ", "
				+ AC + ", " + AC + "  " + comment);
		content.append(NEWLINE);
		
	}

	public void emitOUTNL(int lineNbr, String comment) {
		content.append(lineNbr + ": " + OUTNL + " " + 0 + ", "
				+ 0 + ", " + 0 + "  " + comment);
		content.append(NEWLINE);
		
	}
	
	public void emitIN(int AC, int lineNbr, String comment) {
		content.append(lineNbr + ": " + IN + "   " + AC + ", "
				+ AC + ", " + AC + "  " + comment);
		content.append(NEWLINE);
		
	}

	public void emitJLT(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + JLT + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}
	
	public void emitJLE(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + JLE + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}
	public void emitJEQ(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + JEQ + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}
	public void emitJNE(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + JNE + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}
	public void emitJGE(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + JGE + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}
	public void emitJGT(int register, int constant, int baseRegister,
			int lineNbr, String comment) {
		content.append(lineNbr + ": " + JGT + "   " + register + ", "
				+ constant + "(" + baseRegister + ")" + "  " + comment);
		content.append(NEWLINE);
	}
	
	public void emitDATA(int data) {
		content.append(DATA+ "    " + data);
		content.append(NEWLINE);
		
	}
	
	public void emitSDATA(String data) {
		content.append(SDATA+ "   " + data);
		content.append(NEWLINE);
		
	}
}
