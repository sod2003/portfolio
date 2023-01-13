package myFirstProject;

public class Dog {
	private String dogType;
	private String dogName;
	private String dogColor;
	private int dogAge;
	
	public Dog(String type, String name, String color, int age) {
		dogType = type;
		dogName = name;
		dogColor = color;
		dogAge = age;
	}
	
	public String getType() {
		return dogType;
	}
	
	public void setType(String type) {
		dogType = type;
	}
	
	public String getName() {
		return dogName;
	}
	
	public void setName(String name) {
		dogName = name;
	}
	
	public String getColor() {
		return dogColor;
	}
	
	public void setColor(String color) {
		dogColor = color;
	}
	
	public int getAge() {
		return dogAge;
	}
	
	public void setAge(int age) {
		dogAge = age;
	}
	
	@Override
	public String toString() {
		return "Dog type:" + dogType + " Dog name:" + dogName + " Dog color:" +
				dogColor + " Dog age:" + dogAge;
	}
}
