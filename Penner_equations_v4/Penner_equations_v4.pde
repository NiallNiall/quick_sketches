import controlP5.*;

ControlP5 cp5;

int sliderValue,sliderValue2 = 20;
float sliderValue3;

float r1, r2, mW, mH, r;

void setup() {
  
  cp5 = new ControlP5(this);
  
  cp5.addSlider("sliderValue")
     .setPosition(100,30)
     .setRange(1,200)
      ;
      
  cp5.addSlider("sliderValue2")
     .setPosition(100,50)
     .setRange(1,200)
      ;
      
  cp5.addSlider("sliderValue3")
     .setPosition(100,70)
     .setRange(0.01,1.0)
      ;
  
  r1 = 50;
  r2 = 100;
  size(400, 400);
  
  mW = width/2;
  mH = height/2;
  
  
  stroke(250);

  

background(0);
  
}

void draw() {
  
//  background(0);
  fill(0,80);
  noStroke();
  rect(0,0,width,height);

  
  r1 = sliderValue;
  r2 = sliderValue2;
  
  
  
  float dR = r2 - r1;
  noFill();
  stroke(250);
   beginShape();
    for (int i=0;i<(width);i+=1) {
    float t = i;
    float b = r1;
    float c = dR;
    float d = width/2;
  
    t /= d;
    r = -c*t*(t-2) + b;
    
    float y =height/2 + sin(i/(PI/sliderValue3))*r;
    vertex(i,y);
    
//    line(i, mH+r, i, mH-r);
  }
  endShape();

  
}

