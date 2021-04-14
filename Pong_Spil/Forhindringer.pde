class Forhindring {
  //Variabler til Forhindringer
  int xPos = int(random(250, width - 250));
  int yPos = int(random(10, height - 120));
  int brede = 30;
  int hoejde = 150;

  void display() {
    fill(240, 200, 175);
    //Højre
    //Bunden af sandbag vækken
    stroke(0);
    ellipse(xPos, yPos, 10, 30);
    ellipse(xPos, yPos+40, 10, 30);
    ellipse(xPos, yPos+80, 10, 30);
    //Toppen af sandbag vækken
    ellipse(xPos, yPos+20, 10, 30);
    ellipse(xPos, yPos+60, 10, 30);

    //Venstre
    //Bunden af sandbag vækken
    ellipse(xPos-14, yPos, 10, 30);
    ellipse(xPos-14, yPos+40, 10, 30);
    ellipse(xPos-14, yPos+80, 10, 30);
    //Toppen af sandbag vækken
    ellipse(xPos-14, yPos+20, 10, 30);
    ellipse(xPos-14, yPos+60, 10, 30);

    //Midten
    //Bunden af sandbag vækken
    ellipse(xPos-7, yPos, 10, 30);
    ellipse(xPos-7, yPos+40, 10, 30);
    ellipse(xPos-7, yPos+80, 10, 30);
    //Toppen af sandbag vækken
    ellipse(xPos-7, yPos+20, 10, 30);
    ellipse(xPos-7, yPos+60, 10, 30);
    fill(255);
    noStroke();
  }
}
