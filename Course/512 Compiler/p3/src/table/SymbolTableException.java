package table;
import parser.ParseException;
import parser.Token;


@SuppressWarnings("all")
public class SymbolTableException extends ParseException{

	private LookupError errorType;
	
	private Token token;
	
	private String errorMsg;
	
	public SymbolTableException(LookupError errorType, Token t, String msg) {
		this.errorType = errorType;
		this.token = t;
		this.errorMsg = msg;
	}
	
	public String prettyMessage(){
		String ret = "SymbolTable Look up error: " + errorType + "\n";
		ret += "at Line " + token.beginLine + " Column: " + token.beginColumn + " token: "+token.image +"\n";
		ret += "details: " + errorMsg;
		return ret;
	}
	
}
