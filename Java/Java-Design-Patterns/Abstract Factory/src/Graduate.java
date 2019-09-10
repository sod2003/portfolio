
public class Graduate extends Student {

	public Graduate(String type) {
		System.out.println("New Graduate student");
		this.setLevel("Graduate");
		this.setType(type);
		this.setEntryExams("GMAT/GRE score added");
		switch(type) {
			case "National":
				this.setDescription("Lonely, loathsome, and smells kind of funny");
				break;
			case "International":
				this.setDescription("A serious scholar, representing the hopes and dreams of a Nation");
				break;
			default :
				this.setDescription("This Student is unsure their Nationality was set correctly");
		}	
	}
	
	public void setTuition(boolean resident) {
		if(resident) {
			this.calcTuition(3000);
		} else {
			this.calcTuition(6000);
		}
	}
}
