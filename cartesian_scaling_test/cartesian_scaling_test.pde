import controlP5.*;

ControlP5 cp5;

Slider2D s;

float x1, y1;

int sliderValue = 400;
int sliderValue2 = 400;
float sliderValue3 = 1;

void setup(){
  size(800,800);
  cp5 = new ControlP5(this);
  
  cp5.addSlider("sliderValue")
     .setPosition(100,30)
     .setRange(0,800)
      ;
      
   cp5.addSlider("sliderValue2")
     .setPosition(100,50)
     .setRange(0,800)
      ;
      
   cp5.addSlider("sliderValue3")
     .setPosition(100,70)
     .setRange(0,1.0)
      ;
}

void draw(){
  background(0);
  stroke(250);
  extend_point(sliderValue,sliderValue2,mouseX,mouseY);
}

void extend_point(float originx, float originy, float pointx,float pointy){
  x1 = pointx - originx;
  y1 = pointy - originy;
  pointx += (x1*sliderValue3);
  pointy += (y1*sliderValue3);
  line(originx,originy,pointx,pointy);
}
