package genericsAndCollections;

import java.util.ArrayList;

public class GenericsExercise {
	
	static <T> void displayClassName(T variable) {
		System.out.println(variable.getClass().getName());
	}

	public static void main(String[] args) {
		ArrayList<Object> variables = new ArrayList<Object>();
		Double doubleNum = 1.5;
		variables.add(doubleNum);
		String name = "Sally";
		variables.add(name);
		Integer integerNum = 1;
		variables.add(integerNum);
		Character character = 'a';
		variables.add(character);
		
		for (Object variable : variables) {
			displayClassName(variable);
		}
	}
}
