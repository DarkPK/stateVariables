//Kam Wall Comp Sci 30 P4 



int state;

float rect1X,rect1Y,rect2X,rect2Y;

void setup() {
  size(900,600);
}


void draw() {
  background(0,215,255);
  drawTheTruck();
  
}

void drawTheTruck() {
  //this will draw the truck that you will be driving with
  rect(rect1X,rect1Y,100,100);
  
}