
class missile{
 int x=100;
 int y=100;
 int Size_x = 5;
 int Size_y = 15;
 int speed_y = 6;
 color couleur =color (165,42,42);
 boolean detruit=false;


 
 missile(int _x, int _y){
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
   invader();
   affiche();
   bordure();
 }
  
  void move(){
 y=y-speed_y;
} 
void affiche()
   {
     fill(couleur);
     rect(x,y,Size_x,Size_y);
   }
 void invader() {
   
   for (int i=0;i<lesinvaders.size();i++)//parcourir la liste des invaders
   {
     invader leinvader = lesinvaders.get(i); //extraire le invader numuero i de la liste
     float x_invader = leinvader.getx(); //demander à l'invader sa coordonnée en x
     float y_invader = leinvader.gety(); //demander à l'invader sa coordonnée en y
     int largeur_invader = leinvader.getlargeur();//demander à l'invader sa largeur
     //verifier si l'invader et le missile ont les meme coordonnées
     if ((y>y_invader) && (y<=y_invader+10)){
       if ((x>x_invader) && (x<=x_invader+largeur_invader)){
         lesinvaders.remove(i);//destruction de l'objet numéro i dans la liste
          // Load a soundfile from the /data folder of the sketch and play it back
  

   score++;
   missile++;
   detruit=true;
  
   }
 
   }
 }
 }
void bordure() {
for (int i=0;i<lesmissile.size();i++)//parcourir la liste des missiles
{
  missile monmissile=lesmissile.get(i);
  float y=monmissile.gety();
  if (y<=0){
    lesmissile.remove(i);
 missile++;
 }
}
}

boolean est_detruit()
{
 return detruit; 
}
}
    
    
    
 //<>//
  







    
  