public abstract class ToppingDecorator implements Pizza {
	protected Pizza basePizza;
	
	public ToppingDecorator(Pizza newPizza) {
		basePizza = newPizza;
	}
	
	public String display() {
		return basePizza.display();
	}
	
	public double cost() {
		return basePizza.cost();
	}
}