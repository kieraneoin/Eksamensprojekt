//Objekter //<>//
Padlerne paddel;
Padlerne soldat;
Bold bold;
WinLose WL;
ForhindringerGenerator FG;

//Features
Debug Debug = new Debug();
Billeder pic = new Billeder();

//Variabler
int H = 790;
int H2 = 0;

int startTime = 0;
int time = 0;

int scene = 1;

void setup() {
  //Setup nødvendigheder
  size(1600, 900);
  frameRate(60);

  //
  paddel = new Padlerne(200, 500, 30, 200);
  soldat = new Padlerne(1330, 500, 30, 200);
  FG = new ForhindringerGenerator();
  bold= new Bold(width/2, height/2, 30);

  //Win - Loss screen
  WL = new WinLose();

  //Load Billeder
  pic.loadBilleder();
}

void draw() {
  clear();
  if (scene == 1) {


    image(pic.background, 0, 0);
    //Paddel
    paddel.moveBandit();
    paddel.tegnBandit();
    paddel.miss();
    paddel.collide();
    soldat.tegnSoldat();

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
      FG.lavAntal(3);
    }
    FG.display();
    FG.collideDetection();
  }

  //Debug
  Debug.Debug();

  //Lose
  WL.lose();
}

void keyPressed() {
  paddel.moveBanditPress();
}

void keyReleased() {
  paddel.moveBanditRelease();
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

void timer() {
  time = millis()/1000 - startTime;
  textSize(32);
  text(time, 1500, 100);
  if (WL.lose==true) {
    time = 0;
  }
}
