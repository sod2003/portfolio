package regEx;

import java.util.regex.Pattern;

public class RegExTester {

	public static void main(String[] args) {
		String emailRegEx = "^(.+)@(.+).(.+)";
		Pattern pattern = Pattern.compile(emailRegEx);
		String email = "Sean@email.com";
		
		System.out.print(pattern.matcher(email).matches());
	}
}
