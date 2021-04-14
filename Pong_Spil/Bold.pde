class Bold {
  //Variabler
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diameter;
  float voidSpeedCheck;

  Bold(float xP, float yP, float d) {
    xPos = xP;
    yPos = yP;
    diameter = d;
  }

  void display() {
    ellipse(xPos, yPos, diameter, diameter);
  }

  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }

  void speed(float speed){
    xSpeed = speed;
    ySpeed = random(-xSpeed/1.5, xSpeed/1.5);
  }
  //Hjælpe Variabler
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
