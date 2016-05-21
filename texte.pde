class texte{
  
  texte(){
    
  }
  
  void affiche_vie(){
    fill(255);
    textSize (16);
    text("Vie = ",10,14);
    text(vie,55,14);
  }
  void affiche_missile(){
    fill(255);
    textSize(16);
    text("Nb de missiles = ",10,48);
    text(missile,145,48);
  }
  void affiche_score(){
    fill(255);
    textSize(16);
    text("Score = ",10,30);
    text("/32",95,30);
    text(score,75,30);
  }
  
  void affiche_reprise()
  {
    fill(255);
    textSize(60);
    text("Reprendre O/N",200,200);
  }
}