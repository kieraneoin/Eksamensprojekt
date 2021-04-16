class Level {

  //////////////////////////////////////////Level 1 
  void level1() {
    image(pic.background, 0, 0);
    m.pause();

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();

    if (paddel.spillerRamtSvarCheck == 0) {
      paddel.spillerRamtSvar = int (random(5, 11));
      paddel.spillerRamtSvarCheck = 1;
    }

    //Baggrund
    tegnBaser();
    vaegge();

    //Bold
    bold.display();
    bold.move();
    bold.udForSkaerm();
    if (bold.voidSpeedCheck == 0) {
      bold.speed(5);
      bold.voidSpeedCheck = 1;
    }
    //Timer
    timer();

    //Forhindrings Generator
    if (FG.antalForhindringer == 0) {
      FG.lavAntal(int (random(1, 3)));
    }
    FG.display();
    FG.collideDetection();

    if (bold.xPos <= 150) {
      scene = 5;
    }
  } 

  void level1Knap() {
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      m.home();
    }
  }

  //////////////////////////////////////////Level 2   
  void level2() {
    image(pic.background, 0, 0);
    m.pause();

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();

    if (paddel.spillerRamtSvarCheck == 0) {
      paddel.spillerRamtSvar = int (random(10, 16));
      paddel.spillerRamtSvarCheck = 1;
    }

    //Baggrund
    tegnBaser();
    vaegge();

    //Bold
    bold.display();
    bold.move();
    bold.udForSkaerm();
    if (bold.voidSpeedCheck == 0) {
      bold.speed(5);
      bold.voidSpeedCheck = 1;
    }
    //Timer
    timer();

    //Forhindrings Generator
    if (FG.antalForhindringer == 0) {
      FG.lavAntal(int (random(3, 5)));
    }
    FG.display();
    FG.collideDetection();

    if (bold.xPos <= 150) {
      scene = 5;
    }
  }

  void level2Knap() {
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      m.home();
    }
  }

  void level3() {
    image(pic.background, 0, 0);
    m.pause();

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();

    if (paddel.spillerRamtSvarCheck == 0) {
      paddel.spillerRamtSvar = int (random(15, 21));
      paddel.spillerRamtSvarCheck = 1;
    }

    //Baggrund
    tegnBaser();
    vaegge();

    //Bold
    bold.display();
    bold.move();
    bold.udForSkaerm();
    if (bold.voidSpeedCheck == 0) {
      bold.speed(5);
      bold.voidSpeedCheck = 1;
    }
    //Timer
    timer();

    //Forhindrings Generator
    if (FG.antalForhindringer == 0) {
      FG.lavAntal(int (random(5, 7)));
    }
    FG.display();
    FG.collideDetection();

    if (bold.xPos <= 150) {
      scene = 5;
    }
  }

  void level3Knap() {
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      m.home();
    }
  }
}
