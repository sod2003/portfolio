package lambdas;

import java.util.HashMap;
import java.util.Map;
import java.util.function.BinaryOperator;

public class Calculator {
	private static Map<String, BinaryOperator<Integer>> operationMap;
	
	public Calculator( ) {
		operationMap = new HashMap<String, BinaryOperator<Integer>>();
	}
	
	public void registerOperation(String operation, BinaryOperator<Integer> method) {
		operationMap.put(operation, method);
	}
	
	public int calculate(int a, String operation, int b) {
		return operationMap.get(operation).apply(a, b);
		
	}

	public static void main(String[] args) {
		Calculator calculator = new Calculator();
		calculator.registerOperation("+", (a, b) -> a + b);
		calculator.registerOperation("-", (a, b) -> a - b);
		calculator.registerOperation("*", (a, b) -> a * b);
		calculator.registerOperation("/", (a, b) -> a / b);
		System.out.println(5 == calculator.calculate(2, "+", 3));
	}

}
