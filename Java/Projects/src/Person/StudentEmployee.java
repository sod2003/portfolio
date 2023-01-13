package Person;

public class StudentEmployee extends Student {
	private double rateOfPayPerHour;
	private String employeeId;
	
	public StudentEmployee(String firstName, String lastName, String id, double payRate, String employeeId) {
		super(firstName, lastName, id);
		setRateOfPayPerHour(payRate);
		this.setEmployeeId(employeeId);
	}

	public String getEmployeeId() {
		return employeeId;
	}

	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}

	public double getRateOfPayPerHour() {
		return rateOfPayPerHour;
	}

	public void setRateOfPayPerHour(double rateOfPayPerHour) {
		this.rateOfPayPerHour = rateOfPayPerHour;
	}
	
	@Override
	public String toString() {
		return super.toString() + " employee ID " + employeeId + " pay " + rateOfPayPerHour;
	}
}
