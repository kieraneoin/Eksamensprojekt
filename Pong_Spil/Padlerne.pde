class Padlerne {

  PImage terrorist;
  PImage soldier;

  float x;
  float y;
  float w;
  float h;
  float speedY;
  float speedX;

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
    rect(x, y, 20, 110);
    fill(255);
    image(terrorist, x-70, y-30, 150, 150);
  }

  void tegnSoldat() {
    //image(soldier, xPos, yPos, 100, 150);
  }

  void moveTerrorist() {
    if (keyPressed && keyCode== UP) {
      y -= 10;
    }

    if (keyPressed && keyCode== DOWN) {
      y += 10;
    }
  }

  void collide() {
    if (bold.venstre() < paddel.hojre() && bold.yPos > paddel.op()+90 && bold.yPos < paddel.ned()+20) {
      bold.xSpeed = -bold.xSpeed;
      bold.xSpeed += 2;
      bold.ySpeed = random(-10, 10);
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
