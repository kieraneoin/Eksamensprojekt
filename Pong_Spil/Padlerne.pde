class Padlerne {

  //Variabler
  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  float miss = 100;
  float soldatX = 1330;
  float soldatY;
  float soldatRyk;
  int spillerRamt;
  int spillerRamtSvar;

  //booleans
  boolean moveUp = false;
  boolean moveDown = false;

  Padlerne(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    speedY = 0;
    speedX = 0;
  }

  void tegnBandit() {
    // Jetpack
    if (y <= 370) {
      image(pic.jetpack, x-40, y, 50, 50);
      image(pic.explosion, x-55, y+40, 40, 40);
    }

    noStroke();
    fill(255);
    image(pic.bandit, x-70, y-30, 150, 150);
  }

  void tegnSoldat() {
    soldatY = bold.yPos + soldatRyk;

    //Soldat Jetpack
    if (bold.yPos <= 426) {
      image(pic.jetpackSoldat, 1403, soldatY-30, 50, 50);
      image(pic.explosionSoldat, 1425, soldatY+13, 40, 40);
    }
    //Soldat
    image(pic.soldier, soldatX, soldatY-60, 150, 150);
  }

  void moveBandit() {
    if (moveUp) y -= 10;
    else y += 0;
    if (moveDown) y += 10;
    else y += 0;
  }

  void moveBanditPress() {
    if (keyCode == UP) {
      moveUp = true;
    }
    if (keyCode == DOWN) {
      moveDown = true;
    }
  }

  void moveBanditRelease() {
    if (keyCode == UP) {
      moveUp = false;
    }
    if (keyCode == DOWN) {
      moveDown = false;
    }
  }

  void collide() {
    // COllIDE MED BANDIT
    if (bold.venstre() < paddel.hojre() && bold.yPos > paddel.op()+90 && bold.yPos < paddel.ned()+20) {
      bold.xSpeed = -bold.xSpeed;
      bold.ySpeed = random(-bold.ySpeed*1.5, bold.ySpeed*1.5);
      spillerRamt++;
    }
    // COLLIDE MED SOLDAT
    if (bold.hojre() > soldat.venstre()+70) {
      bold.xSpeed = -bold.xSpeed;
   
      if (spillerRamt >= spillerRamtSvar) {
        WL.win();
        println("hej");
        println(spillerRamt);
      }
    }
  }

  float venstre() {
    return x-w/2;
  }
  float hojre() {
    return x+w/2;
  }
  float op() {
    return y-h/2;
  }
  float ned() {
    return y+h/2;
  }

  void miss() {
    if (spillerRamt == spillerRamtSvar ) {
      // bold.xSpeed=+1000;
      soldat.soldatRyk = soldat.soldatRyk+0.5;
    } 
    if (soldat.soldatRyk >= bold.diameter*2.5 && spillerRamt == 1) {
      soldat.soldatRyk = soldat.soldatRyk-0.5;
    } else {
      soldat.soldatRyk = soldat.soldatRyk;
    }
  }
}
