class Bold {
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diameter;

  Bold(float xP, float yP, float d) {
    xPos = xP;
    yPos = yP;
    xSpeed = 0;
    ySpeed = 0;
    diameter = d;
  }

  void display() {

    ellipse(xPos, yPos, diameter, diameter);
  }

  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;

    // if (xPos < 100 || xPos > 1100) {
    // println("gayboi");
  }

  float venstre() {
    return xPos-diameter/2;
  }
  float hojre() {
    return xPos+diameter/2;
  }
  float op() {
    return yPos-diameter/2;
  }
  float ned() {
    return yPos+diameter/2;
  }

  void udForSkaerm() {
    if (hojre() >= width) {
      xSpeed = -xSpeed;
    }

    if (venstre() <= 0) {
      xSpeed = -xSpeed;
    }

    if (ned() >= height) {
      ySpeed = -ySpeed;
    }

    if (op() <= 0) {
      ySpeed = -ySpeed;
    }
  }
}
