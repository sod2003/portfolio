import java.awt.*;
import java.util.Scanner;

public class Main {

    public static void main(String[] args) {
        System.out.println("Hello World!");
        Car car = new Car(15.5, "CAY75", Color.BLACK, true);
        Car myCar = new Car(20.3, "N00B", Color.BLUE, true);
        System.out.println("My Car's license plate is: " + car.licensePlate);
        System.out.println("My Car's color is: " + car.paintColor.toString());
        System.out.println("Changing my Car's paint color...");
        car.changePaintColor(Color.GREEN);
        System.out.println("My Car's new paint color is: " + car.paintColor.toString());
        System.out.println("Enter a word");
        Scanner sc = new Scanner(System.in);
        String userInput = sc.next();
        String uppercased = userInput.toUpperCase();
        System.out.println(uppercased);
    }
}