package genericsAndCollections;

import java.util.ArrayList;
import java.util.Collections;

public class SortingExample {

	public static void main(String[] args) {
		ArrayList<String> names = new ArrayList<String>();
		names.add("Sean");
		names.add("Jordan");
		names.add("Alice");
		
		Collections.sort(names);
		
		for (String name : names) {
			System.out.println(name);
		}
	}
}
