package type;

public class Type {
	public BasicType basicType;
	public int size = 0;

	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + size;
		result = prime * result
				+ ((basicType == null) ? 0 : basicType.hashCode());
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
		Type other = (Type) obj;
		if (size != other.size)
			return false;
		if (basicType == null) {
			if (other.basicType != null)
				return false;
		} else if (!basicType.equals(other.basicType))
			return false;
		return true;
	}

	@Override
	public String toString() {
		return "Type [Size=" + size + ", basicType=" + basicType + "]";
	}

}
