class vaisseau{
  int pos_x= width/2;
  int pos_y= height-40;
  int largeur= 40;
  boolean Feu = true;
  int Recharge = 0;
  int pas= 4;
  int limite_pas= 8;
    vaisseau(){
      }
    
    void affiche(){
      fill(255);
      rect(pos_x,pos_y,largeur,20);
    }
    void incremente(){
      pas = pas +1; 
      if (pas>limite_pas){
      pas = limite_pas; 
    }
      pos_x=pos_x+pas; 
      if ((pos_x+largeur)>width){
      pos_x=width-largeur; 
      }
    }

    void decremente(){
      pas = pas +1;
      if (pas>limite_pas){
      pas = limite_pas; 
    }
      pos_x=pos_x-pas;
      if ((pos_x<=0)){
      pos_x=0; 
      }
   }
    void pas(){
     pas = 1; 
   }
    int get_x(){
     return pos_x; 
   }
    int get_y(){
      return pos_y;
    }
    int get_largeur(){
     return largeur;  
  }
void vaisseau_graph(){
image(texture[2],pos_x,533);
}
}