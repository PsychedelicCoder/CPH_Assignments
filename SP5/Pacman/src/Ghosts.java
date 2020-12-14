import processing.core.PApplet;


class Ghost extends PApplet {

    //int Color;
    private int x;
    private int y;
    private int maxX;
    private int maxY;


    public Ghost( int x, int y, int maxX, int maxY) {
        this.x = x;
        this.y = y;
        this.maxX = maxX;
        this.maxY = maxY;

        Ghost Blinky;
        Ghost Inky;
        Ghost Pinky;
        Ghost Clyde;

        Blinky = new Ghost( 0, 60, 2, 1);
        Inky = new Ghost( 0, 60, 3, 2);
        Pinky = new Ghost( 0, 60, 1, 3);
        Clyde = new Ghost( 0, 60, 2, 4);


        Blinky.move();
        Blinky.display();

        Inky.move();
        Inky.display();

        Pinky.display();
        Pinky.move();

        Clyde.display();
        Clyde.move();

    }

    private void move() {
    }

    private void display() {

    }


    class GhostSpeed {

        private int colorC;
        private float x = 80;
        private float y = 60;
        private float speedX;
        private float speedY;

        public GhostSpeed(int colorC, float Xpos, float Ypos, float Xspeed, float Yspeed) {
            x = Xpos;
            y = Ypos;
            speedX = Xspeed;
            speedY = Yspeed;
        }


        void move () {
            x = x + speedX;
            y = y + speedY;

            // SETS THE BOUNDARIES for Ghosts

            if (x > width) {
                speedX = -speedX;
            } else if (x < 1) {
                speedX = -speedX;
            } else if (y > height) {
                speedY = -speedY;
            } else if (y < 1) {
                speedY = -speedY;
            }
        }
    }


        /*void move1() {
            xX = xX + speedX;
            yY = yY + speedY;

            // SETS THE BOUNDARIES for Ghosts

            if (xX > width) {
                speedX = -speedX;
            } else if (xX < 1) {
                speedX = -speedX;
            } else if (yY > height) {
                speedY = -speedY;
            } else if (yY < 1) {
                speedY = -speedY;
            }
*/

    public int getX () {
        return x;
    }

    public void setX ( int x){
        this.x = x;
    }

    public int getY () {
        return y;
    }

    public void setY ( int y){
        this.y = y;
    }

    public int getMaxX () {
        return maxX;
    }

    public void setMaxX ( int maxX){
        this.maxX = maxX;
    }

    public int getMaxY () {
        return maxY;
    }

    public void setMaxY ( int maxY){
        this.maxY = maxY;
    }
}
