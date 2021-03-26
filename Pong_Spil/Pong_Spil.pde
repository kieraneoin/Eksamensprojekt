//Globale Variabler //<>// //<>// //<>// //<>// //<>// //<>//
PImage background;
PImage soldier;
PImage moske;
PImage barak;

Padlerne paddel;
Padlerne soldat;
Bold bold;
ForhindringerGenerator FG = new ForhindringerGenerator();

int H = 790;
int H2 = 0;

void setup() {
  size(1600, 900);
  paddel = new Padlerne(200, 500, 30, 200);
  soldat = new Padlerne(1330, 500, 30, 200);
  frameRate(60);
  
  paddel.terrorist = loadImage("terrorist.png");
  background = loadImage("desert.png");
  soldier = loadImage("Soldat.png");
  paddel.jetpack = loadImage("jetpack.png");
  paddel.explosion = loadImage("explosion.png");
  moske = loadImage("moské.png");
  barak = loadImage("barak.png");
  
  bold= new Bold(width/2, height/2, 30);
  bold.xSpeed = 5;
  bold.ySpeed = random(-3, 3);
 
}

void draw() {
  clear();
  image(background, 0, 0);
   paddel.moveTerrorist();
  paddel.tegnTerrorist();
  soldat.tegnSoldat();
  tegnbaser();
  vaegge(); //<>//
  bold.display();
  bold.move();
  bold.udForSkaerm();
  paddel.collide();
 


  if (FG.antalForhindringer == 0){
  FG.lavAntal(3);
  }
  
  FG.display();
  FG.collideDetection();
}

void vaegge() { //<>//
  if (paddel.y - 10 < H2) {  //<>//
    paddel.y = H2 + 10;
  }
  if (paddel.y + 10 > H) {  //<>//
    paddel.y = H - 10;
  }
}

void tegnbaser(){
image(moske,-120,300,300,300);
image(barak,1420,350,300,300);
}
