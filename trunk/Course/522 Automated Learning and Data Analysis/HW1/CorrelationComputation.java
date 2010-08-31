import java.util.HashMap;
import java.util.Map.Entry;

public class CorrelationComputation {
	public static void main(String[] args) {
		double corr1 = corr(new int[]{1,1,1,1},new int[]{2,2,2,2});
		System.out.println("=====================================");
		double corr2 = corr(new int[]{0,1,0,1},new int[]{1,0,1,0});
		System.out.println("=====================================");
		double corr3 = corr(new int[]{0,-1,0,1},new int[]{1,0,-1,0});
		System.out.println("=====================================");
		double corr4 = corr(new int[]{1,1,0,1,0,1},new int[]{1,1,1,0,0,1});
		System.out.println("=====================================");
		double corr5 = corr(new int[]{2,-1,0,2,0,-3},new int[]{-1,1,-1,0,0,-1});
		System.out.println("=====================================");
	}
	
	
	
	public static double corr(int[] x, int[] y){
		double avex = average(x);
		double avey = average(y);
		System.out.println("avex: " + avex + " avey: " + avey);
		
		double covariance = covariance(x, y, avex, avey);
		System.out.println("covariance: " + covariance);
		
		double stddevx = stddev(x, avex);
		System.out.println("stddevx: " + stddevx);
		
		double stddevy = stddev(y, avey);
		System.out.println("stddevy: " + stddevy);
		
		double corr = covariance / (stddevx * stddevy);
		System.out.println("corr: " + corr);
		return 0;
	}



	private static double stddev(int[] x, double avex) {
		double temp = 0;
		for (int i =0; i < x.length;i++) {
			temp += ((x[i] - avex)*(x[i]-avex));
		}
		double stddev = Math.sqrt(temp / (x.length - 1));
		return stddev;
	}



	private static double covariance(int[] x, int[] y, double avex, double avey) {
		double temp = 0;
		for (int i =0; i < x.length;i++) {
			temp += ((x[i] - avex)*(y[i]-avey));
		}
		return temp / (x.length - 1);
	}



	private static double average(int[] x) {
		double sumx = 0;
		for (int i : x) {
			sumx += i;
		}
		double avex = sumx / ((double)(x.length));
		return avex;
	}
}
