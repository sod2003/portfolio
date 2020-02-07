import java.util.Random;

public class Dice {
    
    static int sidesOfDice = 6;
    Random rand;
    int prevRoll;

    public Dice() {

        this.rand = new Random();
        int prevRoll;
    }

    public int rollDice() {
        int currRoll = this.rand.nextInt(sidesOfDice) + 1;
        prevRoll = currRoll;
        return currRoll;
    }

    public void displayPrev() {
        if(prevRoll == 0) {
            System.out.println("No previous roll");
        } else {
            System.out.println("Previous roll: " + prevRoll);
        }
    }
}
