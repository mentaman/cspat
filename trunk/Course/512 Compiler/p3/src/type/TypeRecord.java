package type;

import parser.Token;

public class TypeRecord {
	public Type baseType = new Type();
	public TypeRecord underType;
	public static TypeRecord intType = new TypeRecord(BasicType.INT);
	public static TypeRecord boolType = new TypeRecord(BasicType.BOOL);
	public static TypeRecord strType = new TypeRecord(BasicType.STRING);
	public static TypeRecord voidType = new TypeRecord(BasicType.VOID);
	public boolean notAssignable = false;
	public int offset;
	public int length; // for string
	public boolean isGlobal = true;
	public Token token = new Token();

	@Override
	public String toString() {
		return "TypeRecord [baseType=" + baseType + ", length=" + length
				+ ", notAssignable=" + notAssignable + ", offset=" + offset
				+ ", length=" + length + ", token=" + token.image
				+ ", underType=" + underType + "]";
	}

	public TypeRecord() {

	}

	public TypeRecord(BasicType type) {
		baseType.basicType = type;
	}

	public TypeRecord(BasicType type, boolean notAssignable) {
		baseType.basicType = type;
		this.notAssignable = notAssignable;
	}

	public static TypeRecord arrayType(int size, TypeRecord underType) {
		TypeRecord ret = new TypeRecord();
		ret.baseType.basicType = BasicType.ARRAY;
		ret.baseType.size = size;
		ret.underType = underType;

		return ret;
	}

	public int getDimension() {
		int dimension = 0;
		TypeRecord currentRecord = this;
		Type type = currentRecord.baseType;
		while (type.basicType.equals(BasicType.ARRAY)) {
			dimension++;
			currentRecord = currentRecord.underType;
			type = currentRecord.baseType;
		}

		return dimension;
	}

	public static int arraySize(TypeRecord type) {
		int size = 1;
		while (isArray(type)) {
			size *= type.baseType.size;
			type = type.underType;
		}
		return size;
	}

	public static boolean isArray(Object o) {
		if (!(o instanceof TypeRecord)) {
			return false;
		}
		TypeRecord t = (TypeRecord) o;

		if (t.baseType.basicType.equals(BasicType.ARRAY)) {
			return true;
		}
		return false;
	}

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result
				+ ((baseType == null) ? 0 : baseType.hashCode());
		result = prime * result
				+ ((underType == null) ? 0 : underType.hashCode());
		return result;
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		TypeRecord other = (TypeRecord) obj;
		if (baseType == null) {
			if (other.baseType != null)
				return false;
		} else if (!baseType.equals(other.baseType))
			return false;
		if (underType == null) {
			if (other.underType != null)
				return false;
		} else if (!underType.equals(other.underType))
			return false;
		return true;
	}

}
