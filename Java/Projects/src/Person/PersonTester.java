package Person;

public class PersonTester {

	public static void main(String[] args) {
		Person sally = new Person("Sally", "Phillips");
		System.out.println(sally);
		Person mike = new Student("Mike", "Thompson", "12345");
		System.out.println(mike);
		Person jeff = new StudentEmployee("Jeff", "Sam", "4567", 20.5, "#12345");
		System.out.println(jeff);
	}

}
