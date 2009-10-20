import java.io.BufferedReader;
import java.io.Console;
import java.io.InputStreamReader;
import java.sql.*;

public class Xxiao21 {

	/**
	 * @param args
	 */
	public static void main(String[] args) {

		boolean successful = false;
		double budget = 0.0;
		double speed = 0.0;

		// open up standard input
		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));

		while (!successful)
			try {
				System.out
						.print("Please enter the budget you have for a PC and Printer:  ");
				budget = Double.parseDouble(br.readLine());
				System.out
						.print("Please enter the minimum speed you want for a PC: ");
				speed = Double.parseDouble(br.readLine());
				successful = true;
			} catch (Exception e) {
				successful = false;
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
					.executeQuery("select pc.model,pc.price,pc.speed from pc where pc.price = (select min(price) from pc where speed >= "
							+ speed + ")");

			String modelOfPC = "";
			double priceOFPC = 0.0;
			double speedOfPC = 0.0;
			while (rs.next()) {
				modelOfPC = rs.getString(1);
				priceOFPC = rs.getDouble(2);
				speedOfPC = rs.getDouble(3);
				System.out.println("model of pc " + modelOfPC + " price:  "
						+ priceOFPC + " speed: " + speedOfPC);
			}

			ResultSet rs2 = statement
					.executeQuery("select p.model,p.color,p.price from printer p, (select color, min(price) as price from printer group by color) m where m.color = p.color and m.price = p.price order by p.color");

			String modelsOfPrinter[] = new String[2];
			String colors[] = new String[2];
			double pricesOfPrinter[] = new double[2];

			// the first one will be the non-color printer
			for (int i = 0; i < 2; i++) {
				if (rs2.next()) {
					modelsOfPrinter[i] = rs2.getString(1);
					colors[i] = rs2.getString(2);
					pricesOfPrinter[i] = rs2.getDouble(3);
				}
				System.out.println("model of printer: " + modelsOfPrinter[i]
						+ " color: " + colors[i] + " price: "
						+ pricesOfPrinter[i]);
			}

			if (priceOFPC + pricesOfPrinter[1] <= budget) {
				System.out.println("The cheapest system is PC model: "
						+ modelOfPC + " + color Printer model: "
						+ modelsOfPrinter[1]);
				System.out.println("Total: " + priceOFPC + " + "
						+ pricesOfPrinter[1] + " = "
						+ (priceOFPC + pricesOfPrinter[1]));
			} else if (priceOFPC + pricesOfPrinter[0] <= budget) {
				System.out.println("The cheapest system is PC model: "
						+ modelOfPC + " + non color Printer model: "
						+ modelsOfPrinter[0]);
				System.out.println("Total: " + priceOFPC + " + "
						+ pricesOfPrinter[0] + " = "
						+ (priceOFPC + pricesOfPrinter[0]));
			} else {
				System.out.println("Your budget is not enough");
			}

			statement.close();
			rs.close();
			rs2.close();
			conn.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
