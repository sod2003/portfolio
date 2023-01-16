package advancedCollections;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class MapExercise {

	public static void main(String[] args) {
		Map<String, Person> mapOfPeople = new HashMap<String, Person>();
		ArrayList<Person> people = new ArrayList<Person>();
		people.add(new Person("Mike", "mike@people.net"));
		people.add(new Person("James", "james@people.net"));
		people.add(new Person("Alice", "alice@people.net"));
		people.add(new Person("Jim", "jim@people.net"));
		people.add(new Person("Sean", "sean@people.net"));
		
		for (Person person : people) {
			mapOfPeople.put(person.getEmail(), person);
		}
		
		System.out.println(mapOfPeople.get("jim@people.net"));
	}

}
