/* Generated By:JJTree: Do not edit this line. ASTstringTerm.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTstringTerm extends SimpleNode {
  public ASTstringTerm(int id) {
    super(id);
  }

  public ASTstringTerm(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=4c9cee7d823c416b6fb3b9d73bb7b38f (do not edit this line) */
