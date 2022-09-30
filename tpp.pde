class nubecita{
color c;
float xpos;
float ypos;
float xspeed;

//cons
nubecita(color tempC, float tempYpos, float tempXpos, float tempXspeed){
c = tempC;
xpos = tempXpos;
ypos = tempYpos;
xspeed = tempXspeed;
}

void display(){
  fill(c);
  ellipse(xpos, ypos, 90,50);

}


void drive(){
  xpos += xspeed;
  if(xpos > width){
  xpos =0;
  }

}

}
