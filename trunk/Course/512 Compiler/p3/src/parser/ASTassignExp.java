/* Generated By:JJTree: Do not edit this line. ASTassignExp.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTassignExp extends SimpleNode {
  public ASTassignExp(int id) {
    super(id);
  }

  public ASTassignExp(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=5fca83e88618e5acec1ff5c7a7fa2ea8 (do not edit this line) */