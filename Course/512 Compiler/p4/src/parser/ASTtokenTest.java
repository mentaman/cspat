/* Generated By:JJTree: Do not edit this line. ASTtokenTest.java Version 4.3 */
/* JavaCCOptions:MULTI=true,NODE_USES_PARSER=false,VISITOR=true,TRACK_TOKENS=false,NODE_PREFIX=AST,NODE_EXTENDS=,NODE_FACTORY=,SUPPORT_CLASS_VISIBILITY_PUBLIC=true */
package parser;

public
class ASTtokenTest extends SimpleNode {
  public ASTtokenTest(int id) {
    super(id);
  }

  public ASTtokenTest(Ice9Parser p, int id) {
    super(p, id);
  }


  /** Accept the visitor. **/
  public Object jjtAccept(Ice9ParserVisitor visitor, Object data) {
    return visitor.visit(this, data);
  }
}
/* JavaCC - OriginalChecksum=abd543e752b40cf6bb9b6ce682015e13 (do not edit this line) */