
public class GradSchool implements StudentFactory {

	public Student createStudent(String type) {
		return new Graduate(type);
	}

}
