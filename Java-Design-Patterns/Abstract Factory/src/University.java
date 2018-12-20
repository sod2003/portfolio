import java.util.ArrayList;

public class University {
	
	private ArrayList<Student> Students;
	private StudentFactory gradSchool;
	private StudentFactory school;
	
	public University(StudentFactory school, StudentFactory gradSchool) {
		this.school = school;
		this.gradSchool = gradSchool;
		Students = new ArrayList<Student>();
	}
	
	/*Possible improvement for further abstraction would be to move enrollStudent() 
	 * into an Admissions interface, but also might make the application seem too complicated.*/
	
	public void enrollStudent(String level, String type, boolean resident) {
		
		Student newStudent = null;
		
		if(level.equals("undergraduate")) {
			newStudent = school.createStudent(type);
		} else if(level.equals("graduate")) {
			newStudent = gradSchool.createStudent(type);
		}
		
		System.out.println("Entering new student information");
		Students.add(newStudent);
		System.out.println("Adding Entrance exam scores: " + newStudent.getEntryExams());
		System.out.println("Adding new " + newStudent.getType() + " " + newStudent.getLevel() + " to class roster");
		newStudent.setTuition(resident);
		System.out.println("Tuition: " + newStudent.getTuition());
		System.out.println("Student's disposition: " + newStudent.getDescription() + '\n');
	}
	
	//Other Methods to follow ... printRoster(), getGPAs(), etc.
}
