/*
 * This code was written by Chris Ridgely
 */

package token;

import java.util.StringTokenizer;

public class Token {
//--------------------------------- Data Members
	private String delim; //Delimiter
	int i;
	String[] input;
//---------------------------------
	
	public Token(){
		delim = "/";
		i = 0;
		input = new String[3];
	}

/****************************
 * Main functionality of the program thus far
 * @param request
 */
	public void tokenize(String request){
		StringTokenizer st = new StringTokenizer(request, delim);
		while (st.hasMoreElements()) {
			input[i] = st.nextToken();
			i++;
		}
		System.out.print(toString(input));
	}

/****************************
 * This was just for easier readability
 * @param request
 * @return
 */
	public String toString(String[] request){
		return "<"+ input[0] +"> <" +input[1]+ "> <" + input[2] + ">\n Host: <" + 
						input[1] + ">\n Connection: close \n<BLANK LINE>";
	}
	
}
