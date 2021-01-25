//Globale Variabler
PImage background;
Padlerne paddel;
Bold bold;
Forhindringer F = new Forhindringer();

int H = 790;
int H2 = 0;


void setup() {
  size(1600, 900);
  paddel = new Padlerne(200, 400, 30, 200);
  frameRate(60);
  paddel.terrorist = loadImage("terrorist.png");
  background = loadImage("town.jpg");
  //soldier = loadImage("soldier.png");
  bold= new Bold(width/2, height/2, 30);
  bold.xSpeed = 5;
  bold.ySpeed = random(-3, 3);
 
}


void draw() {
  clear();
  //image(background, 0, 0, 1200, 800);
  paddel.tegnTerrorist();
  paddel.moveTerrorist();
  //tegnSoldat();
  vaegge(); //<>//
  bold.display();
  bold.move();
  bold.udForSkaerm();
  paddel.collide();

   //F.antal(3);
  
}

void vaegge() { //<>//
  if (paddel.y - 10 < H2) {  //<>//
    paddel.y = H2 + 10;
  }
  if (paddel.y + 10 > H) {  //<>//
    paddel.y = H - 10;
  }
}
