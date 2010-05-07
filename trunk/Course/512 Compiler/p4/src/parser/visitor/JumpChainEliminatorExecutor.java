package parser.visitor;

import java.io.*;

public class JumpChainEliminatorExecutor {

	public static void main(String[] args) throws Exception {

		BufferedReader in = new BufferedReader(new InputStreamReader(System.in));
		String s = null;
		StringBuilder builder = new StringBuilder();
		while ((s = in.readLine()) != null) {
			builder.append(s + "\n");
		}
		
		System.out.println("before optimization: ");
		System.out.println(builder.toString());
		
		System.out.println("after optimization: ");
		System.out.println(new JumpChainEliminator(builder.toString()).eliminateJumpChain());

	}

}
