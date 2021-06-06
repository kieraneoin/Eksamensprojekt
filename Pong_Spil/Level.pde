class Level { //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
  //Level 1 
  void level1() {
    image(pic.background, 0, 0); //Baggrunden tegnes
    nextLevel = 2; //Det næste level angives til level 2
    m.pause(); //Man kan pause

    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();//Efter et bestemt antal gange man rammer bolden, misser modstanderen
    paddel.collide();//Spillernes hitbox
    soldat.tegnSoldat();

    //Kører én gang og bestemmer hvor mange gange man skal ramme bolden før modstanderen misser
    if (paddel.spillerRamtSvarCheck == 0) {
      paddel.spillerRamtSvar = int (random(5, 11));
      paddel.spillerRamtSvarCheck = 1;
    }

    //Tegner baserne og væggene
    tegnBaser();
    vaegge();

    //Forhindrings Generator
    //Kører én gang og laver en mængde forhindringer
    if (FG.antalForhindringer == 0) {
      FG.lavAntal(int (random(1, 3)));
    }
    //Kalder forhindringerne
    FG.display();
    FG.collideDetection();

    //Bold
    bold.display();
    bold.move();
    bold.udForSkaerm();
    if (bold.voidSpeedCheck == 0) {//Kører én gang og sætter boldens hastighed
      bold.speed(5);
      bold.voidSpeedCheck = 1;
    }
    //Skriver banen nr i toppen
    textSize(32);
    text("Level: 1", 75, 50);

    if (bold.xPos <= 150) {//Man taber hvis bolden når forbi spilleren
      scene = 5;
    }
  } 

  void level1Knap() {//Home knappen
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      m.home();
    }
  }
  //Ovenstående gentages i de næste levels
  //Level 2   
  void level2() {
    image(pic.background, 0, 0);
    nextLevel = 3;
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

    //Forhindrings Generator
    if (FG.antalForhindringer == 0) {
      FG.lavAntal(int (random(3, 5)));
    }
    FG.display();
    FG.collideDetection();

    //Bold
    bold.display();
    bold.move(); 
    bold.udForSkaerm();
    if (bold.voidSpeedCheck == 0) {
      bold.speed(5);
      bold.voidSpeedCheck = 1;
    }

    textSize(32);
    text("Level: 2", 75, 50);


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
    nextLevel = 7;
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

    //Forhindrings Generator
    if (FG.antalForhindringer == 0) {
      FG.lavAntal(int (random(5, 7)));
    }
    FG.display();
    FG.collideDetection();

    //Bold
    bold.display();
    bold.move();
    bold.udForSkaerm();
    if (bold.voidSpeedCheck == 0) {
      bold.speed(5);
      bold.voidSpeedCheck = 1;
    }

    textSize(32);
    text("Level: 3", 75, 50);

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
