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
    
     float left(){
    return xPos-diameter/2;
  }
  float right(){
    return xPos+diameter/2;
  }
  float top(){
    return yPos-diameter/2;
  }
  float bottom(){
    return yPos+diameter/2;
  }
    
  }
