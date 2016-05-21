PImage texture[] = new PImage[3];



int nb_missile = 4; //nombre de missile dans le jeu
int nb_invader = 32; //nombre d'invaders dans le jeu
int i =0; // compteur invader
int espacement = 250;
vaisseau monvaisseau; // déclaration du vaisseau qui est un objet de type vaisseau (la classe vaisseau)
missile monmissile;
invader leinvader;
tir_invader montir_invader;
texte afficheur = new texte();// l'affichage peut être traité de par un objet




// ArrayList<invaders> un tableau d'objet qui se gère tout seul
ArrayList<invader> lesinvaders = new ArrayList<invader>();// déclaration de la liste pour l utilisation de la mémoire
ArrayList<missile> lesmissile = new ArrayList<missile>();
ArrayList<tir_invader> lestir_invader =new ArrayList<tir_invader>();
void setup(){
size(800,600); //taille de la fenetre
smooth(); // raffraichir la fenetre
chargeData();
//création de l'objet invaders

init();



monvaisseau = new vaisseau(); //création de l'objet vaisseau
}

void draw(){
if (vie>0)
{
background (0); // fond de couleur noir
//chaque missiles est géré
for(int i=0;i<lesmissile.size();i++){
  missile monmissile = lesmissile.get(i);
  monmissile.run();
  monmissile.affiche();
  if(monmissile.est_detruit()==true){
  lesmissile.remove(i);
  }
}
//chaque tir invader est géré

for(int i=0;i<lestir_invader.size();i++){
tir_invader montir_invader= lestir_invader.get(i);
montir_invader.run();
montir_invader.affiche();

}

//affiche les affichages
afficheur.affiche_vie();
afficheur.affiche_score();
afficheur.affiche_missile();




//affichage des invaders de la liste lesinvaders
for(int i =0;i<lesinvaders.size();i++){

  invader leinvader = lesinvaders.get(i); //stockage de l'objet i de la liste dans une variable temporaire de type invader
  leinvader.move();
  leinvader.affiche(); // affiche l'objet récupérée
  leinvader.invader_graph();
 
  if (lestir_invader.size()<4)
  {
    if (random(100)<50)
    {
     // ajout de l'invader 
     lestir_invader.add(new tir_invader(leinvader.getx(),leinvader.gety()));
    }
}
}


 //monvaisseau.affiche(); //affichage du vaisseau 
 monvaisseau.vaisseau_graph();
}
else
{
  fin(); 
}
}

//gestion des touches pour le déplacement du vaisseau
void keyPressed(){
  if (keyCode==RIGHT){
    monvaisseau.incremente();
  }
  if (keyCode == LEFT){
    monvaisseau.decremente();
  }
  if (keyCode== ' '){
  int x_vaisseau=monvaisseau.get_x();
 int y_vaisseau=monvaisseau.get_y();
 if(missile!=0){
 lesmissile.add(new missile((x_vaisseau+17), y_vaisseau-1));
 missile--;

   
 }
}
if (keyCode==79){
  reprise= true;
}
if (keyCode==78){
  reprise= false;
}
println (keyCode);
}

void fin()
{
   background(0);
   afficheur.affiche_reprise();
   if (reprise==true)
   {
    // initialisation
    vie=3;
    score=0;
    missile=4;
   }
}

void init()
{
 for (int x=0;x<8;x++)
{
 for (int y=0;y<4;y++)
 {
  lesinvaders.add(new invader((x*40+espacement),(y*40+60)));
  i++;
 }
} 
}
void chargeData(){
texture[0]=loadImage("data/invader-vert.jpg");
texture[1]=loadImage("data/invader-vert_small.jpg");
texture[2]=loadImage("data/Space Invaders 1.png");
}

  