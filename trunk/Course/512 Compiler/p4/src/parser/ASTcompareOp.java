/* Generated By:JJTree: Do not edit this line. ASTcompareOp.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTcompareOp extends SimpleNode {
  public ASTcompareOp(int id) {
    super(id);
  }

  public ASTcompareOp(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=5a958d76bc10f56910b8b12c1dd9d888 (do not edit this line) */
