class ForhindringerGenerator {
  //ArrayListe til forhindringerne
  ArrayList<Forhindring> liste = new ArrayList<Forhindring>();

  //Variabler
  int antalForhindringer;

  //Bestemmer hvor mange forhindringer der skal være
  void lavAntal(int antal) {
    liste.clear();//Fjerner alt fra arraylisten 
    for (int i = 0; i < antal; i++) {//For-loopet kører så mange gange 'antal' variablen indeholder
      Forhindring f = new Forhindring();//Forhindringsobjektet laves
      liste.add(f);//Objektet tilføjes til Arraylisten
    }
    antalForhindringer = antal;//Da 'antal' er en lokal variabel laver vi 'antalForhindringer' der kan bruges globalt
  }

  void display() {
    for (Forhindring f : liste) {//For hvert objekt i Arraylisten køres loopet
      f.display();//Derfra tegnes sandsækkene
    }
  }

  void collideDetection() {
    for (Forhindring f : liste) {//For hver forhindringsobjekt laves der en hitbox
      //AA BB collision ("Axis-Aligned Bounding Box")
      //Programmet tjekker om bolden rammer forhindringen. Hvis bolden rammer, ændres dens retning
      if (bold.xPos+18 > f.xPos && bold.xPos+10 < f.xPos + f.brede && bold.yPos > f.yPos && bold.yPos < f.yPos + f.hoejde-50) {
        bold.xSpeed = -bold.xSpeed;
      }
    }
  }
}
