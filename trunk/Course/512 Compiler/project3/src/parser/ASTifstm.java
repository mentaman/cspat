/* Generated By:JJTree: Do not edit this line. ASTifstm.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public class ASTifstm extends SimpleNode {
	public boolean hasElse = false;
	public boolean hasElseIf = false;

	public ASTifstm(int id) {
		super(id);
	}

	public ASTifstm(Ice9Parser p, int id) {
		super(p, id);
	}

	/** Accept the visitor. **/
	public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
		return visitor.visit(this, data);
	}
}
/*
 * JavaCC - OriginalChecksum=65f9ffededbc8ddb75ee56a4dc6f639a (do not edit this
 * line)
 */
