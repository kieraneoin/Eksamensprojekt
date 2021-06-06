class Bold {
  //Variabler
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;
  float diameter;
  float voidSpeedCheck;//Sætter bolden i gang når en bane begynder (se Level tab, l.38)
  float startXPos;
  float startYPos;

  Bold(float xP, float yP, float d) {//De globale variabler lokaliseres
    xPos = xP;
    yPos = yP;
    diameter = d;
    startXPos = xP;
    startYPos = yP;
  }
//Tegner bolden
  void display() {
    //ellipse(xPos, yPos, diameter, diameter);
    image(pic.bomb, xPos-17, yPos-25);
  }
//Bevæger bolden
  void move() {
    xPos = xPos + xSpeed;
    yPos = yPos + ySpeed;
  }
//Angiver boldens x og y-speed
  void speed(float speed) {
    xSpeed = speed;
    ySpeed = random(-xSpeed/1.5, xSpeed/1.5);
  }
  //Hjælpe Variabler
  //Angiver boldens fire sider
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
//Reflekterer bolden når den rammer væggene
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
