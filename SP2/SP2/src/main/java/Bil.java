public abstract class Bil {
    public String regNr;
    public String maerke;
    public String moddel;
    public int aargang;
    public int antalDoere;

    public Bil(String regNr, String maerke, String moddel, int aargang, int antalDoere) {
        this.regNr = regNr;
        this.maerke = maerke;
        this.moddel = moddel;
        this.aargang = aargang;
        this.antalDoere = antalDoere;
    }

    protected abstract double beregnGroenAfgift(int value);

    public String getRegNr() {
        return regNr;
    }

    public String getMaerke() {
        return maerke;
    }

    public String getModdel() {
        return moddel;
    }

    public int getAargang() {
        return aargang;
    }

    public int getAntalDoere() {
        return antalDoere;
    }
}
