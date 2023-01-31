package lambdas;

public class Main {

	public static void main(String[] args) {
		BinaryOperation add = (a, b) -> a + b;
	    System.out.println(	 5 == add.apply(2, 3));
	}
}
