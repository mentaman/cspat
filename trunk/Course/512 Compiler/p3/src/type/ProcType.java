package type;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class ProcType {
	public TypeRecord returnType;
	public List<ParaType> paraTypes = new ArrayList<ParaType>();
	@Override
	public String toString() {
		return "[ProcType (paraTypes=" + paraTypes + "): returnType="
				+ returnType + "]";
	}
	public ProcType(TypeRecord returnType, List<ParaType> paraTypes) {
		super();
		this.returnType = returnType;
		this.paraTypes = paraTypes;
	}



}
