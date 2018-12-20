
public class Olives extends ToppingDecorator {

	public Olives(Pizza newPizza) {
		super(newPizza);
	}
	
	public String display() {
		return ("Olive, " + basePizza.display());
	}
	
	public double cost() {
		return basePizza.cost() + 1.50;
	}
}
