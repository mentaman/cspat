import junit.framework.Test;
import junit.framework.TestSuite;

/**
 * The EcommerceTestSuite is an example JUnit TestSuite 
 * as described in the JUnit Primer.
 *
 * @author Mike Clark, http://clarkware.com
 */

public class EcommerceTestSuite {
    
    public static Test suite() {
	
        TestSuite suite = new TestSuite("Ecommerce Tests");
        
        //
        // The ShoppingCartTest we created above.
        //
        suite.addTestSuite(ShoppingCartTest.class);
	
        //
        // Another example test suite of tests.
        // 
        //suite.addTest(CreditCardTestSuite.suite());

	// Add more tests here

        return suite;
    }

    /**
     * Runs the test suite using the textual runner.
     */
    public static void main(String[] args) {
        junit.textui.TestRunner.run(suite());
    }
}
