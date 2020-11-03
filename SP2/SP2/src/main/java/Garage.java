import java.util.ArrayList;
import java.util.Scanner;

public class Garage {

    private String name;

    private ArrayList<Bil> bilPark = new ArrayList<Bil>();


    public Garage(String name) {
        this.name = name;
    }

    public void addBil(Bil bil) {
        bilPark.add(bil);
    }

    public float beregnGrønAfgiftForBilpark() {

        float samletAfgift = 0;

        for (Bil bil : bilPark) {
            samletAfgift += (float) bil.beregnGroenAfgift();
        }
        System.out.println("Den samlede grønne afgift for bilerne i garagen er: " + samletAfgift);
        return samletAfgift;
    }

    @Override
    public String toString() {
        return "Velkommen til den bedste garage" + "\n" +
                "I garagen holder der følgende biler" + bilPark;
    }
}
