class Padlerne {

  PImage terrorist;
  PImage jetpack;
  PImage explosion;
  PImage jetpackSoldat;
  PImage explosionSoldat;

  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;

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

  void tegnTerrorist() {
    noStroke();
    //fill(0);
    //rect(x,y,20,110);
    fill(255);
    image(terrorist, x-70, y-30, 150, 150);

    // Jetpack
    if (y <= 370) {
      image(jetpack, x-40, y, 50, 50);
      image(explosion, x-55, y+40, 40, 40);
    }
  }

  void tegnSoldat() {
    image(soldier, 1330, bold.yPos-60, 150, 150);
    rect(x+1130, bold.yPos, 20, 110);
  }

  void moveBandit() {
    if (moveUp) y -= 10;
    else y += 0;
    if (moveDown) y += 10;
    else y += 0;

    //Jetpack Soldat
    if (bold.yPos <= 426) {
      image(jetpackSoldat, 1403, bold.yPos-30, 50, 50);
      image(explosionSoldat, 1425, bold.yPos+13, 40, 40);
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
}
