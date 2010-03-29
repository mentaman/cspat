package type;

import parser.Token;

public class ParaType {
	public TypeRecord type;
	public Token id;

	public ParaType(TypeRecord type, Token id) {
		super();
		this.type = type;
		this.id = id;
	}

	@Override
	public String toString() {
		return "ParaType [id=" + id + ", type=" + type + "]";
	}
	
	

}
