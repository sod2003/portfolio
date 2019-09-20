import java.awt.*;
import java.util.Scanner;
import java.util.Random;

public class Main {

    public static void main(String[] args) {
        /*
        System.out.println("Hello World!");
        Car car = new Car(15.5, "CAY75", Color.BLACK, true);
         */

        /*
        Car myCar = new Car(20.3, "N00B1", "Blue", false);
        System.out.println("My car is " + myCar.paintColor.toString() + " with " + myCar.averageMilesPerGallon + "MPG and do the tail lights work? " + myCar.areTailLightsWorking);
        myCar.tuneUp();
        myCar.changePaintColor("Black");
        myCar.fixTailights();
        System.out.println("Now after getting work done, my car is " + myCar.paintColor.toString() + " with " + myCar.averageMilesPerGallon + "MPG and do the tail lights work? " + myCar.areTailLightsWorking);
        */

        /*
        Scanner sc = new Scanner(System.in);
        System.out.println("Please enter your age");
        int age = sc.nextInt();
        if(age <= 5) {
            System.out.println("You're a baby!");
        } else if(age > 5 && age < 18) {
            System.out.println("You're a kid!");
        } else { System.out.println("You're an adult!"); }
        */

        /*
        double power = Math.pow(5, 3);
        System.out.println("5 raised to the power of 3 is: " + power);
        double squareRoot = Math.sqrt(64);
        System.out.println(squareRoot);

        Random rand = new Random();
        int randomNumber = rand.nextInt();
        System.out.println("A Random number: " + randomNumber);
         */

        /*
        Coin c = new Coin();
        System.out.println("Initial: " + c.getFaceUp());
        for(int flip = 1; flip <= 10; flip++){
            c.flip();
            System.out.println("Flip " + flip + ": " + c.getFaceUp());
        }
        */

        Dice d = new Dice();
        d.displayDice();
        d.rollDice();
        d.displayDice();
    }
}