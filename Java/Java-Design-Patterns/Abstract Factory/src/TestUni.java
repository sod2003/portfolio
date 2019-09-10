
public class TestUni {

	public static void main(String[] args) {
		//Creating the Student Factories and Client
		StudentFactory school = new School();
		StudentFactory gradSchool = new GradSchool();
		University KSU = new University(school, gradSchool);
		
		//Enrolling students to test functionality.
		KSU.enrollStudent("undergraduate", "National", true);
		KSU.enrollStudent("undergraduate", "International", false);
		KSU.enrollStudent("graduate", "National", false);
		KSU.enrollStudent("graduate", "International", true);
	}
}
