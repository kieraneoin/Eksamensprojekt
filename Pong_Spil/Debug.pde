class Debug {
  //Debuggeren kommer frem når man højreklikker
  void Debug() {
    if (mouseButton == RIGHT) {
      ellipse( mouseX, mouseY, 2, 2 );
      fill(0);
      text( "x: " + mouseX + " y: " + mouseY, mouseX + 2, mouseY );
      text(frameRate, mouseX+64, mouseY+64);
      fill(255);
    }
  }
}
