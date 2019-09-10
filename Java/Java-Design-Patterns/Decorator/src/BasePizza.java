
public class BasePizza implements Pizza {
	
	@Override
	public String display() {
		return ("Pan Pizza");
	}

	@Override
	public double cost() {
		return 5.00;
	}

}
