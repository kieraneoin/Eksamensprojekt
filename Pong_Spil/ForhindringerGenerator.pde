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
  
  void collideDetection(){
  
  }
}
