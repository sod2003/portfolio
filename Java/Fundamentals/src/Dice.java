import java.util.Random;

public class Dice {

    Random rand;
    int prevRoll;

    public Dice() {

        this.rand = new Random();
        int prevRoll;
    }

    public void rollDice() {
        int currRoll = this.rand.nextInt(6) + 1;
        prevRoll = currRoll;
        System.out.println(currRoll);
    }

    public void displayPrev() {
        System.out.println("Previous roll: " + prevRoll);
    }
}
