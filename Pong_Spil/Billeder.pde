class Billeder {
  //PImage
  //Baggrunds Billeder
  PImage background;
  PImage soldier;
  PImage moske;
  PImage barak;

  //Personer
  PImage bandit;
  PImage jetpack;
  PImage explosion;
  PImage jetpackSoldat;
  PImage explosionSoldat;
  PImage bomb;

  //Sandsæk
  PImage jetpackss;

  //Load Billeder
  void loadBilleder() {
    bandit = loadImage("terrorist.png");
    background = loadImage("desert.png");
    soldier = loadImage("Soldat.png");
    jetpack = loadImage("jetpack.png");
    explosion = loadImage("explosion.png");
    jetpackSoldat = loadImage("jetpackSoldat.png");
    explosionSoldat = loadImage("explosionSoldat.png");
    moske = loadImage("moské.png");
    barak = loadImage("barak.png");
    bomb = loadImage("bomb.png");
    jetpackss = loadImage ("jetpackss.png");
  }
}
