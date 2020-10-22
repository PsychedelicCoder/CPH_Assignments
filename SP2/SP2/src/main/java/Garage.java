import java.util.ArrayList;
import java.util.Scanner;

public class Garage {

    ArrayList<Bil> bilPark = new ArrayList<Bil>();

public void addBil(Bil bil) {
    bilPark.add(bil);
}


    public float beregnGrønAfgiftForBilpark(){
    return 0;
    }

    @Override
    public String toString() {
        return "Garage{" +
                "biler=" + bilPark +
                '}';
    }
}
