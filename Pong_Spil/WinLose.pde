class WinLose {
  //booleans
  boolean win;
  boolean lose;

  void win() {

    win = true;
    lose = false;

    textSize(64);
    fill(random(0, 255), random(0, 255), random(0, 255));
    text("YOU WIN", 600, height/2);
    fill(255);
    textSize(32);

    bold.xPos =+ 10000;
    bold.yPos =+ 10000;
    paddel.x =+ 10000;
    paddel.y =+ 10000;
  }

  void lose() {
    image(pic.background, 0, 0);
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
    textSize(32);

    rect(20, 20, 30, 30);
    fill(0);
    text("<", 20, 44);
    fill(255);
    if (mousePressed) {
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        reset();
      }
    }
  }
}
