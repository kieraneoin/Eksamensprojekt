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
    textSize(64);
    fill(240,240,196);
    text("Desert Warfare", 575, 200);
    textSize(32);  
    fill(255);
  }

  void menuKlik() {
    //Start spil
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
      scene = 1;
      nextLevel = 1;
    }
    //Regler
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
      scene = 4;
    }
    //Quit
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
      exit();
    }
  }

  void tilbageKnap() {
    //Home/pause
    if (mouseX >= 20 && mouseX <= 50 && mouseY >= 20 && mouseY <= 50) {
      home();
    }
  }

  void rules() {
    image(pic.background, 0, 0);
    textAlign(CENTER);
    textSize(64);
    text("Velkommen til Desert Warfare\n", 800, 150);
    textSize(32);
    text("Reglerne er rimelig simple.\n Spillet går ud på at ramme bomben med din paddel og \n slå den tilbage mod din modstander. \n Dette bliver ved indtil du, eller computeren misser, \n hvor du så enten går videre til næste level eller taber. \n\n\n\n Styring:\n Ryk op: Pil op\n Ryk ned: Pil ned ", 800, 250);
    textAlign(LEFT);

    //Tilbage knap ligges oven i home knappen men har samme funktionalitet
    rect(20, 20, 30, 30);
    fill(0);
    text("<", 20, 44);
    fill(255);
  }

  void home() {// Sender brugeren tilbage til hovedmenuen
    scene = 0;
  }

  void pause() {//Tegner knappen oven i home knappen
    rect(20, 20, 30, 30);
    fill(0);
    rect(28, 22, 4, 26);
    rect(38, 22, 4, 26);
    fill(255);
  }
}
