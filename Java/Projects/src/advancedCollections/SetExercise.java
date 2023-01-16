package advancedCollections;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class SetExercise {

	public static void main(String[] args) {
		List<String> numbers = new ArrayList<String>();
		numbers.add("3");
		numbers.add("1");
		numbers.add("1");
		numbers.add("1");
		numbers.add("5");
		
		Set<String> uniqueNumbers = new HashSet<String>(numbers);
		for (String number : uniqueNumbers) {
			System.out.println(number);
		}
	}

}
