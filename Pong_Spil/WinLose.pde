class WinLose {
  //booleans
  boolean win;
  boolean lose;

  void win() {
    image(pic.background, 0, 0);
    win = true;
    lose = false;

    textSize(64);
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER);
    text("YOU WIN", 800, 200);
    textAlign(LEFT);
    fill(255);
    textSize(32);

    bold.xPos =+ 10000;
    bold.yPos =+ 10000;
    paddel.x =+ 10000;
    paddel.y =+ 10000;

    fill(255);
    //Knapper
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);
    fill(0);

    //Text
    text("Next Level", 730, 411);
    text("Main Menu", 725, 561);
    text("Exit", 765, 711);
    fill(255);
  }

  void winKnap() {
    //Next level
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
      scene = nextLevel;
      paddel.spillerRamt = 0;
    }
    // Main menu
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
      m.home();
    }
    //Quit
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
      exit();
    }
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
    textAlign(CENTER);
    text("YOU LOSE", 800, 200);
    textAlign(LEFT);
    fill(255);
    textSize(32);

    //knapper
    fill(255);
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);
    fill(0);

    //Knap Text
    text("Try Again", 730, 411);
    text("Main Menu", 725, 561);
    text("Exit", 765, 711);
    fill(255);
  }

  void loseKnap() {
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
      reset();
    }

    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
      m.home();
    }

    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
      exit();
    }
  }
}
