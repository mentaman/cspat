/* Generated By:JJTree: Do not edit this line. ASTotherstm.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTotherstm extends SimpleNode {
  public ASTotherstm(int id) {
    super(id);
  }

  public ASTotherstm(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=abad288223b739db57611f94c4ec2e70 (do not edit this line) */
