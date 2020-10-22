public class ElBil extends Bil {
    public float batterikapacitetKWh;
    public float maxKm;
    public float whPrKm;


    public ElBil(String regNr, String maerke, String moddel, int aargang, int antalDoere, float batterikapacitetKWh, float maxKm, float whPrKm) {
        super(regNr, maerke, moddel, aargang, antalDoere);
        this.batterikapacitetKWh = batterikapacitetKWh;
        this.maxKm = maxKm;
        this.whPrKm = whPrKm;
    }


    public float getBatterikapacitetKWh() {
        return batterikapacitetKWh;
    }

    public float getMaxKm() {
        return maxKm;
    }

    public float getWhPrKm() {
        return whPrKm;
    }

    public float whPrKmToKmPrL (float whPrKm){
        return (float) ((whPrKm/91.25)/100);
    }

    protected double beregnGroenAfgift(int whPrKmToKmPrL) {
        if (whPrKmToKmPrL >= 20) {
            return 330;
        } else if (whPrKmToKmPrL > 15 && whPrKmToKmPrL <= 20) {
            return 1050;
        } else if (whPrKmToKmPrL > 10 && whPrKmToKmPrL <= 15) {
            return 2340;
        } else if (whPrKmToKmPrL > 5 && whPrKmToKmPrL <= 10) {
            return 5500;
        } else if (whPrKmToKmPrL < 5) {
            return 10470;
        } else {
            return 0;
        }
    }

    @Override
    public String toString() {
        return "ElBil{" +
                "batterikapacitetKWh=" + batterikapacitetKWh +
                ", maxKm=" + maxKm +
                ", whPrKm=" + whPrKm +
                ", regNr='" + regNr + '\'' +
                ", maerke='" + maerke + '\'' +
                ", moddel='" + moddel + '\'' +
                ", aargang=" + aargang +
                ", antalDoere=" + antalDoere +
                '}';
    }
}
//omregne whPrKm til kmPrL. Det gøres ved at dividere whPrKm med 91,25 og dernæst dividere 100 med dette tal