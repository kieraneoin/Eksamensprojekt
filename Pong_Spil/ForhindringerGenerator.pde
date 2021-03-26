class ForhindringerGenerator {
  ArrayList<Forhindring> liste = new ArrayList<Forhindring>();

  int antalForhindringer;

  ForhindringerGenerator() {
  }

  void lavAntal(int antal) {
    liste.clear();
    for (int i = 0; i < antal; i++) {
      Forhindring f = new Forhindring();
      liste.add(f);
    }
    antalForhindringer = antal;
  }

  void display() {
    for (Forhindring f : liste) {
      f.display();
    }
  }

  void collideDetection() {
    for (Forhindring f : liste) {
      //AA BB colloision 
      if (bold.xPos > f.xPos && bold.xPos < f.xPos + f.brede && bold.yPos > f.yPos && bold.yPos < f.yPos + f.hoejde) {
        println("Forhindring ramt");
        bold.xSpeed = -bold.xSpeed;
      }
      /*
    if (bold.venstre() == f.xPos && bold.yPos > paddel.op() || bold.hojre() == f.xPos) {
       bold.xSpeed = -bold.xSpeed;
       bold.xSpeed += 2;
       bold.ySpeed = random(-10, 10);
       println("Forhindring ramt");
       }*/
    }
  }
}
