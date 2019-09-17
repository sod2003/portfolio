import java.awt.*;

public class Car {

    double averageMilesPerGallon;
    String licensePlate;
    String paintColor;
    boolean areTailLightsWorking;

    public Car(double averageMilesPerGallon,
               String licensePlate,
               String paintColor,
               boolean areTailLightsWorking) {
        this.averageMilesPerGallon = averageMilesPerGallon;
        this.licensePlate = licensePlate;
        this.paintColor = paintColor;
        this.areTailLightsWorking = areTailLightsWorking;
    }

    void changePaintColor(String newPaint) {
        this.paintColor = newPaint;
    }

    public double speedingUp(double currentSpeed) {
        currentSpeed += 100;
        return currentSpeed;
    }

    public void tuneUp() {
        this.averageMilesPerGallon += 0.3;
    }

    public void fixTailights() {
        this.areTailLightsWorking = true;
    }
}
