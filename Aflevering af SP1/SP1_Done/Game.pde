import java.util.Random;

class Game {
  private Random rnd;
  private int width;
  private int height;
  private int[][] board;
  private Keys keys;
  private int playerLife;
  private int playerLifeTwo;
  private Dot player;
  private Dot[] enemies;
  private Dot[] food;
  private Dot playerTwo;
  private int lifeMax = 100;
  private int lifeMin = 0;

  Game(int width, int height, int numberOfEnemies, int numbersOfFood) {
    if (width < 10 || height < 10) {
      throw new IllegalArgumentException("Width and height must be at least 10");
    }
    if (numberOfEnemies < 0) {
      throw new IllegalArgumentException("Number of enemies must be positive");
    } 
    this.rnd = new Random();
    this.board = new int[width][height];
    this.width = width;
    this.height = height;
    keys = new Keys();
    player = new Dot(0, 0, width-1, height-1);
    playerTwo = new Dot(0, 0, width-1, height-1);
    food = new Dot[numbersOfFood];
    enemies = new Dot[numberOfEnemies];
    for (int i = 0; i < numberOfEnemies; ++i) {
      enemies[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    for (int i = 0; i < numbersOfFood; ++i) {
      food[i] = new Dot(width-1, height-1, width-1, height-1);
    }
    this.playerLife = 100;
    this.playerLifeTwo = 100;
  }

  public int getWidth() {
    return width;
  }

  public int getHeight() {
    return height;
  }

  public int getPlayerLife() {
    return playerLife;
  }

  public int getPlayerLifeTwo() {
    return playerLifeTwo;
  }

  public void onKeyPressed(char ch) {
    keys.onKeyPressed(ch);
  }

  public void onKeyReleased(char ch) {
    keys.onKeyReleased(ch);
  }

  public void update() {
    updatePlayer();
    updatePlayerTwo();
    updateEnemies();
    updateFood();
    checkForCollisions();
    clearBoard();
    populateBoard();
    checkForCollisionsTwo();
  }

  public int[][] getBoard() {
    return board;
  }

  private void clearBoard() {
    for (int y = 0; y < height; ++y) {
      for (int x = 0; x < width; ++x) {
        board[x][y]=0;
      }
    }
  }

  private void updatePlayer() {
    if (keys.wDown() && !keys.sDown()) {
      player.moveUp();
    }
    if (keys.aDown() && !keys.dDown()) {
      player.moveLeft();
    }
    if (keys.sDown() && !keys.wDown()) {
      player.moveDown();
    }
    if (keys.dDown() && !keys.aDown()) {
      player.moveRight();
    }
  }

  private void updatePlayerTwo() {    
    if (keys.p1Down() && !keys.p2Down()) {
      playerTwo.moveUp();
    }
    if (keys.p3Down() && !keys.p4Down()) {
      playerTwo.moveLeft();
    }
    if (keys.p2Down() && !keys.p1Down()) {
      playerTwo.moveDown();
    }
    if (keys.p4Down() && !keys.p3Down()) {
      playerTwo.moveRight();
    }
  }

  private void updateEnemies() {
    for (int i = 0; i < enemies.length; ++i) {
      if (rnd.nextInt(3) < 2) {
        int dx = player.getX() - enemies[i].getX();
        int dy = player.getY() - enemies[i].getY();

        int pdx = playerTwo.getX() - enemies[i].getX();
        int pdy = playerTwo.getY() - enemies[i].getY();
        if (abs(dx) > abs(dy) || abs(pdx) > abs(pdy)) {
          if (dx > 0 || pdx > 0) {
            enemies[i].moveRight();
          } else {
            enemies[i].moveLeft();
          }
        } else if (dy > 0 || pdy > 0) {
          enemies[i].moveDown();
        } else {
          enemies[i].moveUp();
        }
      } else {
        int move = rnd.nextInt(4);
        if (move == 0) {
          enemies[i].moveRight();
        } else if (move == 1) {
          enemies[i].moveLeft();
        } else if (move == 2) {
          enemies[i].moveUp();
        } else if (move == 3) {
          enemies[i].moveDown();
        }
      }
    }
  }

  private void updateFood() {
    for (int i = 0; i < food.length; ++i) {
      if (rnd.nextInt(3) < 2) {
        int dx = player.getX() - food[i].getX();
        int dy = player.getY() - food[i].getY();

        int pdx = playerTwo.getX() - food[i].getX();
        int pdy = playerTwo.getY() - food[i].getY();
        if (abs(dx) > abs(dy) || abs(pdx) > abs(pdy)) {
          if (dx > 0 || pdx > 0) {
            food[i].moveLeft();
          } else {
            food[i].moveRight();
          }
        } else if (dy > 0 || pdy > 0) {
          food[i].moveUp();
        } else {
          food[i].moveDown();
        }
      } else {
        int move = rnd.nextInt(4);
        if (move == 0) {
          //Move right
          food[i].moveRight();
        } else if (move == 1) {
          food[i].moveLeft();
        } else if (move == 2) {
          food[i].moveUp();
        } else if (move == 3) {
          food[i].moveDown();
        }
      }
    }
  }

  private void populateBoard() {
    board[player.getX()][player.getY()] = 1;
    board[playerTwo.getX()][playerTwo.getY()] = 4;

    for (int i = 0; i < enemies.length; ++i) {
      board[enemies[i].getX()][enemies[i].getY()] = 2;
    }
    for (int i = 0; i < food.length; ++i) {
      board[food[i].getX()][food[i].getY()] = 3;
    }
  }

  private void checkForCollisions() {
    for (int i = 0; i < enemies.length; ++i) {
      if (enemies[i].getX() == player.getX() && enemies[i].getY() == player.getY()) {
        if (playerLife > lifeMin) {

          --playerLife;
        }
      }
    }
    for (int i = 0; i < food.length; ++i) {
      if (food[i].getX() == player.getX() && food[i].getY() == player.getY()) {
        if (playerLife < lifeMax) {

          ++playerLife;

          food[i].y = (int)random(0, 25);
          food[i].x = (int)random(0, 25);
        }
      }
    }
  }


  private void checkForCollisionsTwo() {
    for (int i = 0; i < enemies.length; ++i) {
      if (enemies[i].getX() == playerTwo.getX() && enemies[i].getY() == playerTwo.getY()) {
        if (playerLifeTwo > lifeMin) {

          --playerLifeTwo;
        }
      }
    }

    for (int i = 0; i < food.length; ++i) {
      if (food[i].getX() == playerTwo.getX() && food[i].getY() == playerTwo.getY()) {
        if (playerLifeTwo < lifeMax) {

          ++playerLifeTwo;

          food[i].y = (int)random(0, 25);
          food[i].x = (int)random(0, 25);
        }
      }
    }
  }
}
