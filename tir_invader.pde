class tir_invader{
 int x=100;
 int y=100;
 int Size_x = 5;
 int Size_y = 15;
 int speed_y = 6;
 color couleur =color (0,255,0);
 tir_invader(int _x, int _y){
   x= _x;
   y= _y;
 }
   int gety(){
     return y;
   }
   int getx(){
     return x;
   }
 void run(){
   move();
   vaisseau();
   affiche();
   bordure();
 }
  
  void move(){
 y=y+speed_y;
} 
void affiche()
   {
     fill(couleur);
     rect(x,y,Size_x,Size_y);
   }
 void vaisseau() {
   
     float x_vaisseau = monvaisseau.get_x(); //demander à l'invader sa coordonnée en x
     float y_vaisseau = monvaisseau.get_y(); //demander à l'invader sa coordonnée en y
     int largeur_vaisseau = monvaisseau.get_largeur();//demander à l'invader sa largeur
     //verifier si l'invader et le missile ont les meme coordonnées
     if ((y>y_vaisseau) && (y<=y_vaisseau+10)){
       if ((x>x_vaisseau) && (x<=x_vaisseau+largeur_vaisseau)){
         //lesinvaders.remove(i);//destruction de l'objet numéro i dans la liste
 vie--;
  
   }
 
   }
 }
 }
void bordure() {
for (int i=0;i<lestir_invader.size();i++)//parcourir la liste des missiles
{
  tir_invader monmissile=lestir_invader.get(i);
  float y=monmissile.gety();
  if (y>=600){
    lestir_invader.remove(i);

 }
}
}