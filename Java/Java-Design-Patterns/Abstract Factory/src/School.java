
public class School implements StudentFactory {

	public Student createStudent(String type) {
		return new Undergraduate(type);
	}

}
