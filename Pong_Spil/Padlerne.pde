class Padlerne {

  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;
  
  float miss = 100;

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
    //fill(0);
    //rect(x,y,20,110);
    fill(255);
    image(pic.bandit, x-70, y-30, 150, 150);
  }

  void tegnSoldat() {
    image(pic.soldier, 1330, bold.yPos-60, 150, 150);
    //rect(x+1130, bold.yPos, 20, 110);
  }


  void moveBandit() {
    if (moveUp) y -= 10;
    else y += 0;
    if (moveDown) y += 10;
    else y += 0;

    //Jetpack Soldat
    if (bold.yPos <= 426) {
      image(pic.jetpackSoldat, 1403, bold.yPos-30, 50, 50);
      image(pic.explosionSoldat, 1425, bold.yPos+13, 40, 40);
    }
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
    // COllIDE MED TERRORIST
    if (bold.venstre() < paddel.hojre() && bold.yPos > paddel.op()+90 && bold.yPos < paddel.ned()+20) {
      bold.xSpeed = -bold.xSpeed;
      bold.ySpeed = random(-bold.ySpeed*2, bold.ySpeed*2);
    }
    // COLLIDE MED SOLDAT
    if (bold.hojre() > soldat.venstre()+70) {
      bold.xSpeed = -bold.xSpeed;
       miss =  random(-1, 3);
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
   println(miss);
    if (miss < 1) {
      //bold.xPos = 1400;
      bold.xSpeed=+1000;
      
    }
  }
}
