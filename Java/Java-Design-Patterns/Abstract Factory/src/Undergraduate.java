
public class Undergraduate extends Student {

	public Undergraduate(String type) {
		System.out.println("New Undergraduate student");
		this.setLevel("Undergraduate");
		this.setType(type);
		switch(type) {
			case "National":
				this.setDescription("Cheery, bright, and youthful");
				this.setEntryExams("SAT and ACT scores added");
				break;
			case "International":
				this.setDescription("Represent the best of their home country, and hopeful for the future");
				this.setEntryExams("TOFEL scores added");
				break;
			default :
				this.setDescription("This Student is unsure their Nationality was set correctly");
		}	
	}
	
	public void setTuition(boolean resident) {
		if(resident) {
			this.calcTuition(1500);
		} else {
			this.calcTuition(3000);
		}
	}
}
