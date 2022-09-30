//declaracion de una clase:
class Pelotita {
  //propiedades de la clase:
  float x, y, diam, velX;
 
  //constructor:
  Pelotita(){
   x = 100;
   y = height/2;
   diam = 40;
   velX = 2;
   
  }
 
  //funcionalidad:
  void dibujar(){
    push();
    //ellipse( x, y , diam , diam);
    image(cone,x,y,diam,diam);
    pop();
  }
 
 //rebote
  void mover(){
    x+=velX;
    rebotar();
  }
 
  void rebotar(){
    if ( x+diam/2 > width ){
      velX = - velX;
    }
    if ( x-diam/2 < 0 ){
      velX = - velX;
    }
   
  }
 
  //funcionalidades
 
}
