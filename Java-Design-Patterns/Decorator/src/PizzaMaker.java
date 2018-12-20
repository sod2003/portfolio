
public class PizzaMaker {

	public static void main(String[] args) {
		Pizza hotOne = new Olives(new Mushrooms(new BasePizza()));
		System.out.println("A hot and ready " + hotOne.display());
		System.out.println("$" + String.format("%.2f", hotOne.cost()));
	}
}
