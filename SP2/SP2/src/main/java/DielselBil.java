public class DielselBil extends Bil {

    public float kmPrL;
    public boolean harPartikkelFilter;

    public DielselBil(String regNr, String maerke, String moddel, int aargang, int antalDoere, float kmPrL, boolean harPartikkelFilter) {
        super(regNr, maerke, moddel, aargang, antalDoere);
        this.kmPrL = kmPrL;
        this.harPartikkelFilter = harPartikkelFilter;
    }

    public float getKmPrL() {
        return kmPrL;
    }

    public boolean isHarPartikkelFilter() {
        return harPartikkelFilter;
    }

    protected double beregnGroenAfgift(int kmPrL) {
        if (kmPrL >= 20 && harPartikkelFilter) {
            return 130;
        } else if (kmPrL > 15 && kmPrL <= 20 && harPartikkelFilter) {
            return 1390;
        } else if (kmPrL > 10 && kmPrL <= 15 && harPartikkelFilter) {
            return 1850;
        } else if (kmPrL > 5 && kmPrL <= 10 && harPartikkelFilter) {
            return 2770;
        } else if (kmPrL < 5 && harPartikkelFilter) {
            return 15260;
        } else if (kmPrL >= 20 && !harPartikkelFilter) {
            return 1130;
        } else if (kmPrL > 15 && kmPrL <= 20 && !harPartikkelFilter) {
            return 2390;
        } else if (kmPrL > 10 && kmPrL <= 15 && !harPartikkelFilter) {
            return 2850;
        } else if (kmPrL > 5 && kmPrL <= 10 && !harPartikkelFilter) {
            return 3770;
        } else if (kmPrL < 5 && !harPartikkelFilter) {
            return 16260;
        } else {
            return 0;
        }
    }
}