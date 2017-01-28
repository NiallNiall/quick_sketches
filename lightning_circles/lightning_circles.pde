import controlP5.*;

ControlP5 cp5;

float Interval = 45;
float Radius = 100;

void setup(){
 size(400, 400);
 
 cp5 = new ControlP5(this);
  
  cp5.addSlider("Interval")
     .setPosition(100,30)
     .setRange(1.0,180.0)
      ;
      
   cp5.addSlider("Radius")
     .setPosition(100,50)
     .setRange(0,200)
      ;
  
}

void draw(){
  background(0);
  
  noStroke();
  fill(250);
  
 for(int i=0; i < 360; i+= Interval){
      float angle = radians(i);
      float x = (width/2) + sin(angle) * Radius;
      float y = (height/2) + cos(angle) * Radius;
      
      ellipse(x,y, 10,10);
 } 
  
}
