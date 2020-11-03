public class Main {

    public static void main(String[] args) {

        Garage garage = new Garage("garage1");

        ElBil car1 = new ElBil("AA 40 420", "Koenseigg", "Regera", 2020, 2, 1340, 35, 2);
        BenzinBil car2 = new BenzinBil("AA 04 024", "WeridCar", "WeridModel", 1841, 4, 95, 28);
        DielselBil car3 = new DielselBil("AA 40 240", "Ford", "dunno", 1999, 4, 61, true);

        garage.addBil(car1);
        garage.addBil(car2);
        garage.addBil(car3);

        System.out.println(garage);
        garage.beregnGrønAfgiftForBilpark();

    }
}
