package parser.visitor;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map.Entry;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class JumpChainEliminator {

	private boolean debug = false;

	private void debug(String text) {
		if (debug) {
			System.out.println(text);
		}
	}

	private String code;

	private HashMap<String, String> jumpFromTo = new HashMap<String, String>();
//	private HashMap<String, String> relativeJumpFromTo = new HashMap<String, String>();

	public JumpChainEliminator(String outside) {
		code = outside;
	}

	public String eliminateJumpChain() {
		String content = code;

		debug("before optimized: \n" + content);

		Pattern jumpPattern = Pattern.compile("[0-9]+: LDC \\s+"
				+ RegisterConstant.PC + ", [0-9]+"
				+ "[(][0-7][)]\\s+[a-zA-Z0-9\\s]+\\n");
		Matcher jumpCodeMatcher = jumpPattern.matcher(code);
		Pattern intPattern = Pattern.compile("-?[0-9]+");
		Matcher intMatcher = null;
		while (jumpCodeMatcher.find()) {
			String jumpCode = jumpCodeMatcher.group();
			System.out.println("match: " + jumpCode);

			intMatcher = intPattern.matcher(jumpCode);
			intMatcher.find();
			String jumpLine = intMatcher.group();

			debug("match jump line: " + jumpLine);

			intMatcher.find();
			intMatcher.find();
			String jumpTo = intMatcher.group();
			debug("match jump to: " + jumpTo);
			jumpFromTo.put(jumpLine, jumpTo);

		}

		content = jumpCodeMatcher.replaceAll("");
		debug("remove matches: \n" + content);
		
		Pattern jumpLDAPattern = Pattern.compile("[0-9]+: LDA \\s+"
				+ RegisterConstant.PC + ", [0-9]+"
				+ "[(]5[)]\\s+[a-zA-Z0-9\\s]+\\n");
		Matcher jumpLDACodeMatcher = jumpLDAPattern.matcher(content);
		while (jumpLDACodeMatcher.find()) {
			String jumpCode = jumpLDACodeMatcher.group();
			System.out.println("match jump LDA: " + jumpCode);

			intMatcher = intPattern.matcher(jumpCode);
			intMatcher.find();
			String jumpLine = intMatcher.group();
			debug("match jump LDA line: " + jumpLine);

			intMatcher.find();
			intMatcher.find();
			String jumpTo = intMatcher.group();
			debug("match jump LDA to: " + jumpTo);
			jumpFromTo.put(jumpLine, jumpTo);
		}

		content = jumpLDACodeMatcher.replaceAll("");
		debug("remove matches: \n" + content);

		Pattern relativeJumpPattern = Pattern.compile("[0-9]+: LDA \\s+"
				+ RegisterConstant.PC + ", -?[0-9]+"
				+ "[(]7[)]\\s+[a-zA-Z0-9\\s]+\\n");
		Matcher relativeJumpMatcher = relativeJumpPattern.matcher(content);
		while (relativeJumpMatcher.find()) {
			String jumpCode = relativeJumpMatcher.group();
			System.out.println("match jump LDA: " + jumpCode);

			intMatcher = intPattern.matcher(jumpCode);
			intMatcher.find();
			String jumpLine = intMatcher.group();
			debug("match relative jump line: " + jumpLine);

			intMatcher.find();
			intMatcher.find();
			String jumpTo = intMatcher.group();
			debug("match relative jump to: " + jumpTo);
			int fromLine  = Integer.parseInt(jumpLine);
			int toLine  = fromLine + 1 + Integer.parseInt(jumpTo);
	        debug("refactor relative jump to: " + toLine);
			
			jumpFromTo.put(fromLine +"", toLine + "");
		}

		content = relativeJumpMatcher.replaceAll("");
		debug("remove matches: \n" + content);
//		debug("relative map: " + relativeJumpFromTo);
		
		boolean changed = true;

		while (changed) {
			changed = false;

			for (Entry<String, String> entry : jumpFromTo.entrySet()) {
				String from = entry.getKey();
				String to = entry.getValue();
				if (jumpFromTo.containsKey(to)) {
					entry.setValue(jumpFromTo.get(to));
					changed = true;
					System.out.println("optimizied line: " + from);
				}
			}

		}
		
//		changed = true;
//		while (changed) {
//			changed = false;
//
//			for (Entry<String, String> entry : relativeJumpFromTo.entrySet()) {
//				String from = entry.getKey();
//				String to = entry.getValue();
//				int fromLine  = Integer.parseInt(from);
//				int toLine  = fromLine + 1 + Integer.parseInt(to);
//				if (jumpFromTo.containsKey(to)) {
//					entry.setValue(jumpFromTo.get(to));
//					changed = true;
//					System.out.println("optimizied line: " + from);
//				}
//			}
//
//		}

		debug("map: " + jumpFromTo);

		StringBuilder result = new StringBuilder(content);
		for (Entry<String, String> entry : jumpFromTo.entrySet()) {
			String from = entry.getKey();
			String to = entry.getValue();
			if (Integer.parseInt(from) + 1 == Integer.parseInt(to)) {
				result.append(from + ": LDA   0, "
						+ "0(0)  eliminate unnecessary jump");
				result.append("\n");
			} else {
				result.append(from + ": LDC   7, " + to
						+ "(0)  optimized to new destination");
				result.append("\n");
			}
		}

		debug("optimized: " + result);

		return result.toString();
	}
}
