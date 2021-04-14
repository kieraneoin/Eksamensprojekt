class WinLose {

  boolean win;
  boolean lose;

  void win() {
    if (bold.xPos >= 1380) {
      win = true;
      lose = false;

      textSize(64);
      fill(random(0, 255), random(0, 255), random(0, 255));
      text("YOU WIN", 600, height/2);
      fill(255);
      
            bold.xPos =+ 10000;
      bold.yPos =+ 10000;
      paddel.x =+ 10000;
      paddel.y =+ 10000;
    }
  }

  void lose() {
    if (bold.xPos <= 150) {
      win = false;
      lose = true;

      bold.xPos =- 10000;
      bold.yPos =+ 10000;
      paddel.x =+ 10000;
      paddel.y =+ 10000;

      textSize(64);
      fill(random(0, 255), random(0, 255), random(0, 255));
      text("YOU LOSE", 600, height/2);
      fill(255);
    }
  }
}
