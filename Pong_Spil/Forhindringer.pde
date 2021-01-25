class Forhindringer {
  int xPos = int(random(250, width - 250));
  int yPos = int(random(10, height - 120));
  int antalForhindringer;

  Forhindringer() {
  }

  void display(int fXPos, int fYPos) {
    fill(240, 200, 175);
    //Højre
    //Bunden af sandbag vækken
    ellipse(fXPos, fYPos, 10, 30);
    ellipse(fXPos, fYPos+40, 10, 30);
    ellipse(fXPos, fYPos+80, 10, 30);
    //Toppen af sandbag vækken
    ellipse(fXPos, fYPos+20, 10, 30);
    ellipse(fXPos, fYPos+60, 10, 30);

    //Venstre
    //Bunden af sandbag vækken
    ellipse(fXPos-14, fYPos, 10, 30);
    ellipse(fXPos-14, fYPos+40, 10, 30);
    ellipse(fXPos-14, fYPos+80, 10, 30);
    //Toppen af sandbag vækken
    ellipse(fXPos-14, fYPos+20, 10, 30);
    ellipse(fXPos-14, fYPos+60, 10, 30);

    //Midten
    //Bunden af sandbag vækken
    ellipse(fXPos-7, fYPos, 10, 30);
    ellipse(fXPos-7, fYPos+40, 10, 30);
    ellipse(fXPos-7, fYPos+80, 10, 30);
    //Toppen af sandbag vækken
    ellipse(fXPos-7, fYPos+20, 10, 30);
    ellipse(fXPos-7, fYPos+60, 10, 30);
  }

  void antal(int antal) {
    for (int i = 0; i < antal; i++) {
      randomPos();
      display(xPos, yPos);
      println(antalForhindringer);
    }
    antal = antalForhindringer;
  }

  void randomPos() {
    xPos = int(random(250, width - 250));
    yPos = int(random(10, height - 120));
  }
}
