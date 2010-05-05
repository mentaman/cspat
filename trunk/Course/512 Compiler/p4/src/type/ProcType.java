package type;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;

import parser.Token;

public class ProcType {
	public TypeRecord returnType;
	public List<ParaType> paraTypes = new ArrayList<ParaType>();
	public int startLineNbr;
	public int endLineNbr;
	public HashMap<TypeRecord, ArrayList<Token>> localVariablesHashMap = new HashMap<TypeRecord, ArrayList<Token>>();
	public HashMap<String, TypeRecord> typeTable = new HashMap<String, TypeRecord>();
	

	@Override
	public String toString() {
		return "ProcType [endLineNbr=" + endLineNbr
				+ ", localVariablesHashMap=" + localVariablesHashMap
				+ ", paraTypes=" + paraTypes + ", returnType=" + returnType
				+ ", startLineNbr=" + startLineNbr + "]";
	}



	public ProcType(TypeRecord returnType, List<ParaType> paraTypes) {
		super();
		this.returnType = returnType;
		this.paraTypes = paraTypes;
	}

}
