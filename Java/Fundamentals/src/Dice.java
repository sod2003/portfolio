import java.util.Random;

public class Dice {

    private int die1;
    private int die2;

    public Dice() {
        rollDice();
    }

    public void rollDice() {
        System.out.println("Rolling Dice");
        Random rand = new Random();
        die1 = rand.nextInt(6);
        die2 = rand.nextInt(6);
    }

    private int displayDie(int die) {
        for (int i = 0; i < 6; i++) {
            if (i == die) {
                return ++i;
            }
        }
        return -1;
    }

    public void displayDice() {
        System.out.println("Die 1: " + displayDie(die1));
        System.out.println("Die 2: " + displayDie(die2));
    }
}
