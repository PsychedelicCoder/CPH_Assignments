import processing.core.PApplet;

public class Keys extends PApplet {
    private boolean p1;
    private boolean p2;
    private boolean p3;
    private boolean p4;

    public Keys() {

    }

    public void pressedKey() {
        if (keyCode == UP) {
            p1 = true;
        } else if (keyCode == DOWN) {
            p2 = true;
        } else if (keyCode == LEFT) {
            p3 = true;
        } else if (keyCode == RIGHT) {
            p4 = true;
        }
    }

    public void releasedKey() {
        if (keyCode == UP) {
            p1 = false;
        } else if (keyCode == DOWN) {
            p2 = false;
        } else if (keyCode == LEFT) {
            p3 = false;
        } else if (keyCode == RIGHT) {
            p4 = false;
        }
        /*
        public boolean getP1() {
            return p1;
        }

        public boolean getP2() {
            return p2;
        }

        public boolean getP3() {
            return p3;
        }

        public boolean getP4() {
            return p4;
        }*/
    }
}