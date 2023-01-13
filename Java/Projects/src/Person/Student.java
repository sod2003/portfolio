package Person;

public class Student extends Person {
	private String studentId;
	
	public Student(String firstName, String lastName, String id) {
		super(firstName, lastName);
		setStudentId(id);
	}

	public String getStudentId() {
		return studentId;
	}

	public void setStudentId(String studentId) {
		this.studentId = studentId;
	}
	
	@Override
	public String toString() {
		return super.toString() + " student ID " + studentId;
	}
}
