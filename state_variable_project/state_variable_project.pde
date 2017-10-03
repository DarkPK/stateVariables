//Kam Wall Comp Sci 30 P4 
//this is a game where you drive a truck for as long as possible, untill you land upsidown or you choose to quit

PImage theTruck;

int state;

float truckX,truckY,rectX,rectY,groundX,groundY,tX1,tX2,tX3,tY1,tY2,tY3;
float tScale;
float r,g,b;
float fallSpeed,xSpeed;

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
  
  //The ground x and y
  groundX = 0;
  groundY = height-25;
  
  //the speeds
  fallSpeed = 1;
  xSpeed = 0;
  constrain(xSpeed,-10,12);
  
  //the ramps
  tX1 = 100;
  tY1 = height-25;
  tX2 = 1;
  tY2 = random(height/2,2*height/3);
  tX3 = 200;
  tY3 = height-25;
}


void draw() {
  background(0,215,255);
  drawTheTruck();
  startScreen();
  gameStart();
  ground();
  
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


void gameStart() {
  //this is the actual gameplay
  
  if (state == 1) {
    //this is all of the code for the background moving
    ground();
    if (truckY <= groundY-50) {
      truckY += fallSpeed;
      fallSpeed *= 1.1;
    }
    else {
      fallSpeed = 1;
    }
  }
  
}

void ground() {
  //this will draw the ground
  if (state == 1) {
    rectMode(LEFT);
    noStroke();
    fill(3,255,4);
    rect(groundX,groundY,width,height);
  }
  
}

void jumps() {
  //this makes all of your jumps you have to go over
  
  if (state == 1) {
    
  }
  
}