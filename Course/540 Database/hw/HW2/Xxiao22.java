import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

public class Xxiao22 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {
		boolean successful = false;
		double price = 0.0;
		double speed = 0.0;
		int model = 0;
		int hd = 0;
		int ram = 0;
		String maker = "";

		// open up standard input
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		// Ask the user for a manufacturer, model number, speed, RAM, hard-disk
		// size, and price of a
		// new PC. Check that there is no PC with that model number. Print a
		// warning if so, and
		// otherwise insert the information into tables Product and PC.
		while (!successful)
			try {
				System.out.print("To create a new PC record: ");

				System.out
						.print("Please enter the name of manufacturer (no more than 20 characters)  ");
				maker = br.readLine();
				System.out.print("Please enter the model number of the PC: ");
				model = Integer.parseInt(br.readLine());
				System.out.print("Please enter the speed of the PC: ");
				speed = Double.parseDouble(br.readLine());
				System.out.print("Please enter the ram of the PC: ");
				ram = Integer.parseInt(br.readLine());
				System.out
						.print("Please enter the size of hard disk of the PC: ");
				hd = Integer.parseInt(br.readLine());
				System.out.print("Please enter the price of the PC: ");
				price = Integer.parseInt(br.readLine());

				successful = true;
			} catch (Exception e) {
				successful = false;
				System.err.println("Error: " + e.getMessage());
				System.out.println("Please enter again");
			}

		Connection conn = null;
		try {

			Class.forName("oracle.jdbc.OracleDriver");
			System.out.println("Oracle JDBC driver loaded ok.");

			String url = "jdbc:oracle:thin:@ora.csc.ncsu.edu:1523:orcl";
			String user = "xxiao2";
			String password = "000954996";
			conn = DriverManager
					.getConnection(url,user,password);
			System.out.println("Connected .");

			Statement statement = conn.createStatement();
			ResultSet rs = statement
					.executeQuery("select * from pc where pc.model = " + model);
			if (rs.next()) {
				System.out.println("Sorry, this model has exists! ");
				return;
			}

			String insertProductSQL = "insert into product values('" + maker
					+ "'," + model + ", 'PC')";
			System.out.println("insertProductSQL: " + insertProductSQL);
			statement.execute(insertProductSQL);
			System.out
					.println("Inserting a new product of PC successful! Now insert a PC record....");
			String insertPCSQL = "insert into PC values(" + model + "," + speed
					+ "," + ram + "," + hd + "," + price + ")";
			System.out.println("insertPCSQL: " + insertPCSQL);
			statement.execute(insertPCSQL);
			System.out.println("Inserting a new record of PC successful! .");

			statement.close();
			rs.close();
			conn.close();
		} catch (Exception e) {
			System.out.println("The model has exists");
		}
	}

}
