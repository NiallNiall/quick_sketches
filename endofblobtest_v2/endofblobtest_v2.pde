import controlP5.*;

ControlP5 cp5;

int sliderValue = 50;

int mid;
float extend, extend2;

void setup(){
 size(400,400);
 cp5 = new ControlP5(this);
 
 cp5.addSlider("sliderValue")
     .setPosition(100,30)
     .setRange(5,200)
      ;
 
 mid = height/2;
 
 extend = 50;
}

void draw(){
  background(0);
  stroke(250);
  
   
  
  for(float i=HALF_PI;i<PI;i+=(PI/20)){
   float mouser = mouseX+sin(i)*sliderValue;
   
   extend2 = extend * cos(i);
   
   line(mouser,mid-extend2,mouser,mid+extend2); 
  }
}
