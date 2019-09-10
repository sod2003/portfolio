import java.util.ArrayList;

public abstract class Student {

	private String level;
	private String type;
	private String description;
	private ArrayList<Integer> grades = new ArrayList<Integer>();
	private int tuition;
	private String entryExams;
	
	public String getLevel() {
		return level;
	}
	
	public void setLevel(String level) {
		this.level = level;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String desc) {
		this.description = desc;
	}
	
	public float getGPA() {
		int sum = 0;
		
		for(int grade: grades) {
			sum += grade;
		}
		
		return sum/grades.size();
	}
	
	public void addgrade(int grade) {
		grades.add(grade);
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
	
	public abstract void setTuition(boolean resident);
	
	public void calcTuition(int tuition) {
		this.tuition = tuition;
	}
	
	public int getTuition() {
		return tuition;
	}
	
	public void setEntryExams(String entryExams) {
		this.entryExams = entryExams;
	}
	
	public String getEntryExams() {
		return entryExams;
	}
}
