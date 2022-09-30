//Passero Elian 81693/8 , González Martina 88141/9, TP3. Com 3 
//https://youtu.be/3pLnQnfm_1k

Pelotita damian;
int cantX=2; //movi
float [] tono;//dia/noche
PImage cone;

//agregamos las nubes en este codigo
//practica sin arrays
/*nubecita minube;
nubecita minube1;
nubecita minube2;*/

//cantidad de nubes con array
nubecita[] nubes = new nubecita[5];

void setup(){
  size(400,400);
  damian = new Pelotita();
  tono= new float [10];
  cone=loadImage("cone.png");
 
  //declaramos minube
  //practica sin arrays
/* minube = new nubecita(color(250), 100,10,2);
  minube1 = new nubecita(color(250), 50,50,4);
   minube2 = new nubecita(color(250), 150,20,1);*/
   
   
   for(int i = 0; i < nubes.length; i++){
   nubes[i] = new nubecita(color(255),random(10,150), i*height/nubes.length,random(2,6));
   }//estructura
 
}

void draw(){
 
 
 
  float modX= (float) width/cantX;
  for (int a=0;a<cantX;a++){
    background(tono [a]);
  }
  for (int a=0;a<cantX;a++){
    tono [a]++;
    if (tono [a]>255){
      tono [a]=0;
    }
    //lo combocamos para funcione la animacion
    //practica sin arrays
   /* minube.drive();
    minube.display();
    //nube2 y 3
     minube1.drive();
    minube1.display();
   
     minube2.drive();
    minube2.display();*/
    
    //se mueven solas
    for(int i = 0; i < nubes.length; i++){
    nubes[i].drive();
    nubes[i].display();
    }
   
   //paswto
     fill (0,255,0);
    rect (0, 220, 400, 250);
   
     damian.mover();
  damian.dibujar();

}
}
