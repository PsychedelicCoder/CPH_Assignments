class Keys {
  private boolean wDown = false;
  private boolean aDown = false;
  private boolean sDown = false;
  private boolean dDown = false;

  private boolean p1Down = false;
  private boolean p2Down = false;
  private boolean p3Down = false;
  private boolean p4Down = false;


  public Keys() {
  }


  public boolean p1Down() {
    return p1Down;
  }

  public boolean p2Down() {
    return p2Down;
  }

  public boolean p3Down() {
    return p3Down;
  }

  public boolean p4Down() {
    return p4Down;
  }


  public boolean wDown() {
    return wDown;
  }

  public boolean aDown() {
    return aDown;
  }

  public boolean sDown() {
    return sDown;
  }

  public boolean dDown() {
    return dDown;
  }



  void onKeyPressed(char ch) {
    if (ch == 'W' || ch == 'w') {
      wDown = true;
    } else if (ch == 'A' || ch == 'a') {
      aDown = true;
    } else if (ch == 'S' || ch == 's') {
      sDown = true;
    } else if (ch == 'D' || ch == 'd') {
      dDown = true;
    }
    if (keyCode == UP) {
      p1Down = true;
    } else if (keyCode == DOWN) {
      p2Down = true;
    } else if (keyCode == LEFT) {
      p3Down = true;
    } else if (keyCode == RIGHT) {
      p4Down = true;
    }
  }

  void onKeyReleased(char ch) {
    if (ch == 'W' || ch == 'w') {
      wDown = false;
    } else if (ch == 'A' || ch == 'a') {
      aDown = false;
    } else if (ch == 'S' || ch == 's') {
      sDown = false;
    } else if (ch == 'D' || ch == 'd') {
      dDown = false;
    }
    if (keyCode == UP) {
      p1Down = false;
    } else if (keyCode == DOWN) {
      p2Down = false;
    } else if (keyCode == LEFT) {
      p3Down = false;
    } else if (keyCode == RIGHT) {
      p4Down = false;
    }
  }

  /*   
   void ArrowKeyPressed(){
   if (keyCode == UP) {
   arrowUp = true;
   } 
   else if (keyCode == DOWN) {
   arrowDown = true;
   }
   else if (keyCode == LEFT) {
   arrowLeft = true;
   }
   else if (keyCode == RIGHT) {
   arrowRight = true;
   }
   }
   
   void ArrowKeyReleased(){
   if (keyCode == UP) {
   arrowUp = false;
   } 
   else if (keyCode == DOWN) {
   arrowDown = false;
   }
   else if (keyCode == LEFT) {
   arrowLeft = false;
   }
   else if (keyCode == RIGHT) {
   arrowRight = false;
   }
   }
   */
}
