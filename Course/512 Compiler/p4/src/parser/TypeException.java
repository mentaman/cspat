package parser;

@SuppressWarnings("all")
public class TypeException extends ParseException{
	
	private TypeError errorType;
	
	private String errorMessage;
	
	private Token t;

	public TypeException(TypeError errorType, String errorMessage, Token t) {
		super();
		this.errorType = errorType;
		this.errorMessage = errorMessage;
		this.t = t;
	}

	public String prettyMessage(){
		String errorMsg = "Type Error: " + errorType + "\n";
		errorMsg+= "line: " + t.beginLine + " column: " + t + " token: " + t.image + "\n";
		errorMsg+= "errorMessage: " + errorMessage;
		return errorMsg;
	}
	
	
}
