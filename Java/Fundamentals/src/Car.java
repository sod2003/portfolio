import java.awt.*;

public class Car {

    double averageMilesPerGallon;
    String licensePlate;
    Color paintColor;
    boolean areTailLightsWorking;

    public Car(double averageMilesPerGallon,
               String licensePlate,
               Color paintColor,
               boolean areTailLightsWorking) {
        this.averageMilesPerGallon = averageMilesPerGallon;
        this.licensePlate = licensePlate;
        this.paintColor = paintColor;
        this.areTailLightsWorking = areTailLightsWorking;
    }

    void changePaintColor(Color newPaint) {
        this.paintColor = newPaint;
    }
}
