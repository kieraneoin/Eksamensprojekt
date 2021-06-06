//Objekterne deklareres //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
Padlerne paddel; 
Padlerne soldat;
Bold bold;
WinLose WL;
ForhindringerGenerator FG;
Menu m;
Level Lvl;

//Features som også er objekter
Debug Debug = new Debug();
Billeder pic = new Billeder();

//Variabler
int H = 790;//Bruges til væggene
int H2 = 0; //Bruges til væggene

int startTime = 0;//Skulle være brugt til tid,
int time = 0;//men blev ikke brugt

int scene = 0;//Vi kunne have brugt switch 

int nextLevel;//Angiver næste level

void setup() {
  //Setup nødvendigheder
  size(1600, 900);
  frameRate(60);

  //Objekterne kaldes og nogle får en værdi
  paddel = new Padlerne(200, 500, 30, 200);
  soldat = new Padlerne(1330, 500, 30, 200);
  FG = new ForhindringerGenerator();
  bold= new Bold(width/2, height/2, 30);
  m = new Menu();
  Lvl = new Level();

  //Win - Loss screen
  WL = new WinLose();

  //Load Billeder
  pic.loadBilleder();
}

void draw() {
  clear();
  println(paddel.spillerRamtSvar);
  //Scenesystemet
  if (scene==0) {
    m.display();
  }

  if (scene == 1) {
    Lvl.level1();
  }

  if (scene == 2) {
    Lvl.level2();
  }

  if (scene == 3) {
    Lvl.level3();
  }

  if (scene == 4) {
    m.rules();
  }

  if (scene == 5) {
    WL.lose();
  }

  if (scene == 6) {
    WL.win();
  }

  if (scene == 7) {
    WL.end();
  }

  //Debug kan kaldes i alle scener
  Debug.Debug();
}
//Bevæger banditten
void keyPressed() {
  paddel.moveBanditPress();
}
//Stopper bevægelsen
void keyReleased() {
  paddel.moveBanditRelease();
}

void mouseClicked() {
  //Scene inddeling der bestemmer hvilke knapper der er tilgængelige
  if (scene == 0) {
    m.menuKlik();
  } else if (scene == 1) {
    Lvl.level1Knap();
  } else if (scene == 2) {
    Lvl.level2Knap();
  } else if (scene == 3) {
    Lvl.level3Knap();
  } else if (scene == 4) {
    m.tilbageKnap();
  } else if (scene == 5) {
    WL.loseKnap();
  } else if (scene == 6) {
    WL.winKnap();
  } else if (scene == 7) {
    WL.endKnap();
  }
}
//Sørger for at spilleren ikke kan forlade banen
void vaegge() {
  if (paddel.y - 10 < H2) { 
    paddel.y = H2 + 10;
  }
  if (paddel.y + 10 > H) { 
    paddel.y = H - 10;
  }
}
//Baserne tegnes
void tegnBaser() {
  image(pic.moske, -120, 300, 300, 300);
  image(pic.barak, 1420, 350, 300, 300);
}
//Banen og dens elementer genstartes
void levelReset() {
  //Paddel
  paddel.spillerRamt = 0;
  soldat.soldatRyk = 0;
  paddel.spillerRamtSvarCheck = 0;

  //Forhindringer
  FG.antalForhindringer = 0;

  //Bold
  bold.xPos = bold.startXPos;
  bold.yPos = bold.startYPos;
  bold.voidSpeedCheck = 0;
}
//Starter spillet om fra første bane
void reset() {
  //Bold Reset
  bold= new Bold(width/2, height/2, 30);

  //Paddel Reset
  paddel = new Padlerne(200, 500, 30, 200);

  //Level Reset
  levelReset();

  scene = 1;
}
