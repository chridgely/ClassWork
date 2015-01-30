package token;
//Main class for testing
public class Main {

	public static void main(String[] args) {
		Token tk = new Token();
		
		tk.tokenize("http://www.loyola.edu/1.1");

	}
	
/*Expected Result:
 * 
 *<http:> <www.loyola.edu> <1.1>
 *Host: <www.loyola.edu>
 *Connection: close 
 *<BLANK LINE>
 *
 */
}


