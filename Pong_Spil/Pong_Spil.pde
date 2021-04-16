//Objekter //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>// //<>//
Padlerne paddel;
Padlerne soldat;
Bold bold;
WinLose WL;
ForhindringerGenerator FG;
Menu m;
Level Lvl;

//Features
Debug Debug = new Debug();
Billeder pic = new Billeder();

//Variabler
int H = 790;
int H2 = 0;

int startTime = 0;
int time = 0;

int scene = 0;

int nextLevel;

void setup() {
  //Setup nødvendigheder
  size(1600, 900);
  frameRate(60);

  //Objekter
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
  println(FG.antalForhindringer);
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

  //Debug
  Debug.Debug();
}

void keyPressed() {
  paddel.moveBanditPress();
}

void keyReleased() {
  paddel.moveBanditRelease();
}

void mouseClicked() {
  //Scene inddeling
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
  }
}

void vaegge() {
  if (paddel.y - 10 < H2) { 
    paddel.y = H2 + 10;
  }
  if (paddel.y + 10 > H) { 
    paddel.y = H - 10;
  }
}

void tegnBaser() {
  image(pic.moske, -120, 300, 300, 300);
  image(pic.barak, 1420, 350, 300, 300);
}

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

void reset() {
  //Bold Reset
  bold= new Bold(width/2, height/2, 30);

  //Paddel Reset
  paddel = new Padlerne(200, 500, 30, 200);

  //Level Reset
  levelReset();

  scene = 1;
}
