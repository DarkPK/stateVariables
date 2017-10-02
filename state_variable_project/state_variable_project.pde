//Kam Wall Comp Sci 30 P4 
//this is a game where you drive a truck for as long as possible, untill you land upsidown or you choose to quit

PImage theTruck;

int state;

float truckX,truckY,rectX,rectY;
float tScale;
float r,g,b;

void setup() {
  size(900,600);
  
  //the states
  state = 0;
  
  //everything to do with the truck
  theTruck = loadImage("truck.png");
  truckX = width/4;
  truckY = 5*height/6;
  tScale = 0.1;
  
  //theButton
  rectX = width/2;
  rectY = height/2;
  r = 184;
  g = 44;
  b = 255;
}


void draw() {
  background(0,215,255);
  drawTheTruck();
  startScreen();
  
}

void drawTheTruck() {
  //this will draw the truck that you will be driving with
  if(state == 1) {
    imageMode(CENTER);
    image(theTruck,truckX,truckY,theTruck.width*tScale,theTruck.height*tScale);
  }
  
}

void startScreen() {
  //this will make the start screen (state 0)
  if(state == 0) {
    //the title
    textSize(height/6);
    fill(0);
    textAlign(CENTER);
    text("Truck Dash!",width/2,height/3);
    
    //the start button
    rectMode(CENTER);
    fill(r,g,b);
    rect(rectX,rectY,width/4,height/6,10);
    fill(0);
    textSize(height/9);
    text("Start",rectX,rectY+20);
    if(mouseX >= rectX-112.5 && mouseX <= rectX+112.5 && mouseY >= rectY-50 && mouseY <= rectY+50) {
      r = 170;
      g = 3;
      if(mousePressed == true) {
        state = 1;
      }
    }
    else {
      r = 184;
      g = 44;
    }
  }
}