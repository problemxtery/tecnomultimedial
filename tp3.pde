//Passero Elian 81693/8 , González Martina 88141/9, TP3. Com 3 
//https://youtu.be/6BiBgdzAl4I

int mov, mov2, pantalla = 0;
PImage florroja, florrosa, conejito, tortuga;

void setup() {
  size(1000, 600);
  loadImage("flor roja.png", "flor rosa.png");
  florroja=loadImage("flor roja.png"); 
  florrosa=loadImage("flor rosa.png");
  conejito=loadImage("cone.png");
  tortuga=loadImage("tortu.png");

}

void draw() {

  if (pantalla == 0) {
    pantalla0();
  }

  if (pantalla == 1) {

    figurasCarrera();
    if ( mov2 >= 1050) {
      pantalla=2;
    }
    if (mov >= 1050) {
      pantalla=3;
    }

    for ( int i = 0; i < 2; i ++ ) {
      florroja.resize(80, 80);
      florrosa.resize(100,100);
      image( florroja, 100*i*7, 50 );
      image( florrosa, 150*i*5, 450 );
    }
  }

  if ( pantalla==2 ) {
    dibujarGanaste();
  }
  if ( pantalla==3 ) {
    dibujarPerdiste();
  }
}


void dibujarGanaste() {
  background(57, 197, 40);
  fill(0);
  text("Ganaste :D", 150, height/2);
  pushStyle();
  textSize(15);
  text("Click en cualquier sitio para volver a jugar", 350, 500);
  popStyle();
}

void dibujarPerdiste() {
  background(197, 40, 40);
  fill(0);
  text("Perdiste :(", 150, height/2);
  pushStyle();
  textSize(15);
  text("Click en cualquier sitio para volver a jugar.", 350, 500);
  popStyle();
}

void figurasCarrera() {
  mov+=2;
  pantalla = 1;
  background(202, 164, 114);

  //fondo de la carrera(pasto)
  fill(142, 217, 127);
  rect(0, 0, 1000, 150);
  rect(0, 250, 1000, 100);
  rect(0, 450, 1000, 150);

  //la meta
  fill(255);
  rect(900, 0, 100, 600);

  fill(0);
  
  //competidores
  conejito.resize(100,100);
  image(conejito, mov, 155);
  //rect(mov, 175, 50, 50);
  
  tortuga.resize(100,100);
  image(tortuga, mov2, 350);
  //circle(mov2, 400, 50);
}


void pantalla0() {
  pantalla=0;
  background(168, 236, 255);
  fill(255);
  textSize(70);
  text("Rabbit VS Turtle", 220, 250);
  pushStyle();
  textSize(15);
  text("¡Manten presionada la tecla 'Espacio' para mover a la tortuga e intenta ganarle al conejo!", 180,380);
  popStyle();
  rect(350, 450, 280, 80);
  textSize(40);
  fill(0);
  text("Empezar", 400, 500);
}


void keyPressed() {

  mov2+=15;
}
void mousePressed() {

  if (pantalla==0) {
    pantalla = 1;
    mov=0;
    mov2=0;
  } else if (pantalla==2) {
    pantalla = 0;
  } else if (pantalla==3) {
    pantalla = 0;
  }
}
