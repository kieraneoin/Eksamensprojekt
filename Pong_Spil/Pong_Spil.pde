Bold bold; 



void setup() {
  size(1200, 800);
  bold= new Bold(width/2, height/2, 20);
bold.xSpeed = 5;
bold.ySpeed = random(-3,3);
}

void draw() {
  clear();
  bold.display();
  bold.move();
}
