class invader {
 
  int pos_invader_x=24; //déclaration d'une variable de type entiere dans laquelle on stock 24
  int pos_invader_y=24; //déclaration d'une variable de type entiere dans laquelle on stock 24
  int largeur_invader=20; //déclaration de la largeur de l'invader
  int longueur_invader=20; //déclaration de la longeur de l'invader
  int pas_y=1;
  int pas_x=1;
  int limite_pas=1;
  int direction =(int) random(1,3);
  color couleur =color (255,255,255); //déclaration d'une variable de type color dans laquelle on met du noir
  
  //constructeur qui est appelé à la création de l'objet
   invader(int _x,int _y)
   {
     pos_invader_x=_x; //stocke dans la variable interne de l'objet la valeur reçue
     pos_invader_y=_y; //stocke dans la variable interne de l'objet la valeur reçue
    // change_couleur(); //appelle la procedure pour calculer une couleur
     fill(couleur);//affectation de cette couleur
   }
   
   
   //procedure qui affiche l'invader
   void affiche()
   {
     fill(couleur);
     rect(pos_invader_x,pos_invader_y,largeur_invader,longueur_invader);
   }
 
   
   //méthode qui renvoie la position x de l'invader
   int getx(){
     return pos_invader_x;
   }
   
   //méthode qui renvoie la position y de l'invader
   int gety(){
     return pos_invader_y;
   }
   
   //méthode qui renvoie la largeur de l'invader
   int getlargeur(){
     return largeur_invader;
   }
   
   //méthode qui renvoie la longeur de l'invader
   int getlongeur(){
     return longueur_invader;
   }

     void move(){
pos_invader_x= pos_invader_x + pas_x;
 if (pos_invader_x >= width | pos_invader_x <=0) {
   pas_x=pas_x*-1;
   pos_invader_y= pos_invader_y+ 20;
 }
}
void invader_graph(){
image(texture[1],pos_invader_x,pos_invader_y);
}
}