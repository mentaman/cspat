/* Generated By:JJTree: Do not edit this line. ASTtimeDivide.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTtimeDivide extends SimpleNode {
  public ASTtimeDivide(int id) {
    super(id);
  }

  public ASTtimeDivide(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=ff0799ecb0b5c9788bbc51045b870af4 (do not edit this line) */
