class Menu {

  void display() {
    noStroke();
    //baggrund
    image(pic.background, 0, 0);

    //knapper
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);


    //text
    textSize(32);
    fill(0);
    text("Start", 765, 411);
    text("Rules", 765, 561);
    text("Exit", 765, 711);

    fill(255);
  }

  void klik() {
    if (mousePressed) {
      if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
        scene = 1;
        println("1");
      }

      if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
        scene = 2;
        println("2");
      }

      if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
        exit();
      }

      if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
        home();
      }
    }
  }
  void rules() {
    image(pic.background, 0, 0);
    text("Abdullah", 200, 200);
  }

  void home() {
    scene = 0;
  }

  void pause() {
    rect(20, 20, 30, 30);
    fill(0);
    rect(28, 22, 4, 26);
    rect(38, 22, 4, 26);
    fill(255);
  }
}
