package parser.visitor;

import static org.junit.Assert.*;

import org.junit.Test;

public class JumpChainEliminatorTest {

	@Test
	public void jumpChainEliminationTest() throws Exception {
		String testcode = "0: LD    6, 0(5)  save stack pointer \n"
				+ "1: LDC   7, 3(5)  load array error str address \n"
				+ "2: LDC   1, 4(5)  load array error str address \n"
				+ "3: LDC   7, 5(5)  load str length into ac2 \n"
				+ "4: JEQ   1, 5(7)  output nothing when empty \n"
				+ "5: LDA   5, 6(5)  increase offset \n"
				+ "6: LDA   7, 3(5)  load char into ac3 \n"
				+ "7: LDA   7, 8(5)  load char into ac3 \n"
				+ "8: LDA   3, 3(5)  load char into ac3 \n"
				+ "9: JLT   3, 3(5)  load char into ac3 \n"
				+ "10: JEQ   3, 3(5)  load char into ac3 \n"
			;

		JumpChainEliminator eliminator = new JumpChainEliminator(testcode);
		eliminator.eliminateJumpChain();
	}
}
