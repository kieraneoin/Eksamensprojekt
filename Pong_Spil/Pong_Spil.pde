//Objekter //<>//
Padlerne paddel;
Padlerne soldat;
Bold bold;
WinLose WL;
ForhindringerGenerator FG;
Menu m;

//Features
Debug Debug = new Debug();
Billeder pic = new Billeder();

//Variabler
int H = 790;
int H2 = 0;

int startTime = 0;
int time = 0;

int scene = 0;

void setup() {
  //Setup nødvendigheder
  size(1600, 900);
  frameRate(60);

  //
  paddel = new Padlerne(200, 500, 30, 200);
  soldat = new Padlerne(1330, 500, 30, 200);
  FG = new ForhindringerGenerator();
  bold= new Bold(width/2, height/2, 30);
  m = new Menu();

  //Win - Loss screen
  WL = new WinLose();

  //Load Billeder
  pic.loadBilleder();
}

void draw() {
  clear();
  if (scene==0) {
    m.display();
    m.klik();
  }



  if (scene == 1) {
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

    WL.lose();
  }

  if (scene == 2) {
    m.rules();
    rect(20, 20, 30, 30);
    fill(0);
    text("<", 20, 44);
    fill(255);
    if (mousePressed) {
      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        m.home();
      }
    }
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
