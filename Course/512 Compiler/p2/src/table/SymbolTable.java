package table;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Stack;

import parser.*;

import type.*;

public class SymbolTable {
	public HashMap<String, TypeRecord> variableTable = new HashMap<String, TypeRecord>();
	public HashMap<String, TypeRecord> typeTable = new HashMap<String, TypeRecord>();
	public HashMap<String, ProcType> procTable = new HashMap<String, ProcType>();
	public HashMap<String, ProcType> forwardTable = new HashMap<String, ProcType>();
	public SymbolTable parent;

	// public Stack<Object> stack1 = new Stack<Object>();

	public static SymbolTable buildInTable() {

		SymbolTable ret = new SymbolTable();
		ret.typeTable.put("int", TypeRecord.intType);
		ret.typeTable.put("bool", TypeRecord.boolType);
		ret.typeTable.put("str", TypeRecord.strType);
		List<ParaType> paras = new ArrayList<ParaType>();
		Token s = new Token();
		s.image = "s";
		paras.add(new ParaType(TypeRecord.strType, s));
		ret.procTable.put("int", new ProcType(TypeRecord.intType, paras));
		return ret;

	}

	public TypeRecord lookupId(Token t) throws SymbolTableException {
		// stack1.p
		SymbolTable current = this;
		String id = t.image;
		while (!current.variableTable.containsKey(id) && current.parent != null) {
			current = current.parent;
		}
		if (!current.variableTable.containsKey(id)) {
			throw new SymbolTableException(LookupError.ID_NOT_DEFINED, t,
					"cannot find id " + t.image + " in any symboltable.");
		}
		TypeRecord ret = current.variableTable.get(id);
		return ret;

	}

	public List<String> getForwardsWithoutProc(){
		List<String> ret = new ArrayList<String>();
		for(String key : forwardTable.keySet()){
			if(!procTable.containsKey(key)){
				ret.add(key);
			}
		}
		
		return ret;
	}
	
	public ProcType lookupProc(Token t) throws SymbolTableException {
		SymbolTable current = this;
		String id = t.image;
		while (!current.procTable.containsKey(id) && current.parent != null) {
			current = current.parent;
		}
		if (!current.procTable.containsKey(id)) {
			return lookupForward(t);
		}

		return current.procTable.get(id);
	}

	public TypeRecord lookupType(Token t, String typeName)
			throws SymbolTableException {
		SymbolTable current = this;
		while (!current.typeTable.containsKey(typeName)
				&& current.parent != null) {
			current = current.parent;
		}
		if (!current.typeTable.containsKey(typeName)) {
			throw new SymbolTableException(LookupError.TYPE_NOT_DEFINED, t,
					"cannot find type " + t.image + " in any symboltable.");
		}
		return current.typeTable.get(typeName);
	}

	public boolean existsProc(Token id) {
		SymbolTable current = this;
		String procName = id.image;
		while (!current.procTable.containsKey(procName)
				&& current.parent != null) {
			current = current.parent;
		}
		if (!current.procTable.containsKey(procName)) {
			return false;
		}
		return true;
	}

	public ProcType lookupForward(Token id) throws SymbolTableException {
		SymbolTable current = this;
		String procName = id.image;
		while (!current.forwardTable.containsKey(procName)
				&& current.parent != null) {
			current = current.parent;
		}
		if (!current.forwardTable.containsKey(procName)) {
			throw new SymbolTableException(LookupError.TYPE_NOT_DEFINED, id,
					"cannot find type " + id.image + " in any symboltables.");
		}
		return current.forwardTable.get(procName);
	}

	public void insertProc(Token id, ProcType proc) throws SymbolTableException {
		if (procTable.containsKey(id.image)) {
			throw new SymbolTableException(LookupError.PROC_ALREADY_DEFINED,
					id, "proc " + id.image
							+ " is already definied in current table.");
		}
		procTable.put(id.image, proc);
	}

	public void insertForward(Token id, ProcType proc)
			throws SymbolTableException {
		if (forwardTable.containsKey(id.image)) {
			throw new SymbolTableException(LookupError.PROC_ALREADY_DEFINED,
					id, "forward " + id.image
							+ " is already definied in current forward table.");
		}
		if (procTable.containsKey(id.image)) {
			throw new SymbolTableException(LookupError.PROC_ALREADY_DEFINED,
					id, "forward " + id.image
							+ " is already definied in current proc table.");
		}
		forwardTable.put(id.image, proc);
	}

	public boolean existsForward(Token id) {
		SymbolTable current = this;
		String procName = id.image;
		while (!current.forwardTable.containsKey(procName)
				&& current.parent != null) {
			current = current.parent;
		}
		if (!current.forwardTable.containsKey(procName)) {
			return false;
		}
		return true;
	}

	public void insertIds(List<Token> tokens, TypeRecord type)
			throws SymbolTableException {
		for (Token t : tokens) {
			insertId(t, type);
		}
	}

	public void insertId(Token t, TypeRecord type) throws SymbolTableException {

		if (variableTable.containsKey(t.image)) {
			throw new SymbolTableException(LookupError.ID_ALREADY_DEFINED, t,
					"id " + t.image + " is already definied in current table.");
		}

		variableTable.put(t.image, type);

	}

	public void insertType(Token id, TypeRecord type)
			throws SymbolTableException {

		if (typeTable.containsKey(id.image)) {
			throw new SymbolTableException(LookupError.TYPE_ALREADY_DEFINED,
					id, "type " + id.image
							+ " is already definied in current table.");
		}

		typeTable.put(id.image, type);

	}

	@Override
	public String toString() {
		return "SymbolTable [procTable=" + procTable + ", \ntypeTable="
				+ typeTable + ", \nvariableTable=" + variableTable
				+ ", \nparent=" + parent + "]\n";
	}

}
