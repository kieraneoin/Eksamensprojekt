class WinLose {
  //booleans
  boolean win;
  boolean lose;

  void win() {
    image(pic.background, 0, 0);
    win = true;
    lose = false;

    textSize(64);
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER);
    text("YOU WIN", 800, 200);
    textAlign(LEFT);
    fill(255);
    textSize(32);

    fill(255);
    //Knapper
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);
    fill(0);

    //Text
    text("Next Level", 730, 411);
    text("Main Menu", 725, 561);
    text("Exit", 765, 711);
    fill(255);
  }

  void winKnap() {  //<>//
    //Next level  //<>//
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {  //<>//
      scene = nextLevel;  //<>//
      levelReset();  //<>//
    }
    // Main menu
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {  //<>//
      m.home();
    }
    //Quit
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
      exit();
    }
  }

  void lose() {
    image(pic.background, 0, 0);
    win = false;
    lose = true;

    textSize(64);
    fill(random(0, 255), random(0, 255), random(0, 255));
    textAlign(CENTER);
    text("YOU LOSE", 800, 200);
    textAlign(LEFT);
    fill(255);
    textSize(32);

    //knapper
    fill(255);
    rect(675, 350, 250, 100);
    rect(675, 500, 250, 100);
    rect(675, 650, 250, 100);
    fill(0);

    //Knap Text
    text("Try Again", 730, 411);
    text("Main Menu", 725, 561);
    text("Exit", 765, 711);
    fill(255);
  }

  void loseKnap() {
    if (mouseX >=675 && mouseX <= 925 && mouseY >= 350 && mouseY <= 450) {
      reset();
    }

    if (mouseX >=675 && mouseX <= 925 && mouseY >= 500 && mouseY <= 600) {
      m.home();
    }

    if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
      exit();
    }
  }
  
  void end(){
   image(pic.background,0,0);
   textAlign(CENTER);
   textSize(64);
   fill(0,255,0);
   text("Congratulations \n You won the game",800,200);
   textSize(32);

   text("Push to play again",800,600);
  fill(255);
   //Tilbage til start
    rect(675, 650, 250, 100);
     fill(0);
    text("PLAY AGAIN",800,710);
    textAlign(LEFT);
       fill(255);
    
  }
  void endKnap(){
   if (mouseX >=675 && mouseX <= 925 && mouseY >= 650 && mouseY <= 750) {
     reset(); 
     scene = 0;
    }
  }
}
