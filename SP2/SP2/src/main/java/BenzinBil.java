public class BenzinBil extends Bil {
    public int oktanTal;
    public float kmPrL;


    public BenzinBil(String regNr, String maerke, String moddel, int aargang, int antalDoere, int oktanTal, float kmPrL) {
        super(regNr, maerke, moddel, aargang, antalDoere);
        this.kmPrL = kmPrL;
        this.oktanTal = oktanTal;
    }


    public int getOktanTal() {
        return oktanTal;
    }

    public float getKmPrL() {
        return kmPrL;
    }

    protected double beregnGroenAfgift(int kmPrL) {
        if (kmPrL >= 20) {
            return 330;
        } else if (kmPrL > 15 && kmPrL <= 20) {
            return 1050;
        } else if (kmPrL > 10 && kmPrL <= 15) {
            return 2340;
        } else if (kmPrL > 5 && kmPrL <= 10) {
            return 5500;
        } else if (kmPrL < 5) {
            return 10470;
        } else {
            return 0;
        }

    /*
    For en Benzinbil er afgiften afhængig af kmPrL.
    Hvis den er mellem 20 og 50 er den 330kr, mellem 15 og 20 er den
    1050 kr, mellem 10 og 15 er den 2340kr, mellem 5 og 10 er den 5500kr,
    og under 5 er den 10470kr
    */
    }
}
