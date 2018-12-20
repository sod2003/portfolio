
public class Mushrooms extends ToppingDecorator {

	public Mushrooms(Pizza newPizza) {
		super(newPizza);
	}

	public String display() {
		return ("Mushroom, " + basePizza.display());
	}
	
	public double cost() {
		return basePizza.cost() + 1.50;
	}
}
