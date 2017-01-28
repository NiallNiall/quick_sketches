import controlP5.*;

ControlP5 cp5;
int cx, cy;
float lg_rad;

int sliderValue = 100;
int sliderValue2 = 10;

void setup(){
  size(400,400);
  background(5,5,45);
  cp5 = new ControlP5(this);
  
  lg_rad = 50;
  cx = 200;
  cy = 200;
  
  cp5.addSlider("sliderValue")
     .setPosition(100,30)
     .setRange(0,255)
      ;
      
   cp5.addSlider("sliderValue2")
     .setPosition(100,50)
     .setRange(0,100)
      ;
}


void draw(){
  fill(0,30);
  noStroke();
  rect(0,0,width,height);

  for(int i=0;i<360;i+=1){
    fill(255,255,255);
    stroke(255,255,255);
    float angle = i * TWO_PI / 360;
    float x = cx + cos(angle) * random(sliderValue-sliderValue2,sliderValue+sliderValue2);
    float y = cy + sin(angle) * random(sliderValue-sliderValue2,sliderValue+sliderValue2);
    ellipse(x,y,5,5);
    //ellipse(x, y, 20, 20);
  }
  
}
