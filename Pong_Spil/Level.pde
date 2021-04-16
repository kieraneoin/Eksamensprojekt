class Level {

  //////////////////////////////////////////Level 1 
  void level1() {
    image(pic.background, 0, 0);
    m.pause();
    if (mousePressed) {
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        m.home();
      }
    }

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();
    paddel.spillerRamtSvar = int (random(5, 11));

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
      scene = 3;
    }
  } 

  //////////////////////////////////////////Level 2   
  void level2() {
    image(pic.background, 0, 0);
    m.pause();
    if (mousePressed) {
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        m.home();
      }
    }

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();
    paddel.spillerRamt = (int (random(10, 16)));

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
  
    void level3() {
    image(pic.background, 0, 0);
    m.pause();
    if (mousePressed) {
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        m.home();
      }
    }

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();
    paddel.spillerRamt = (int (random(10, 16)));

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
}
