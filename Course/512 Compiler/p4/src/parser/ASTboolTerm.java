/* Generated By:JJTree: Do not edit this line. ASTboolTerm.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTboolTerm extends SimpleNode {
  public ASTboolTerm(int id) {
    super(id);
  }

  public ASTboolTerm(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=c93e6cdbca3a60242a4a31754913e707 (do not edit this line) */