import controlP5.*;

ControlP5 cp5;
int cx, cy;
float lg_rad;

int sliderValue = 100;
int sliderValue2 = 10;

void setup(){
  size(400,400);
  background(120,55,123);
  cp5 = new ControlP5(this);
  
  lg_rad = 50;
  cx = 200;
  cy = 200;
  
  cp5.addSlider("sliderValue")
     .setPosition(100,30)
     .setRange(1,50)
      ;
      
   cp5.addSlider("sliderValue2")
     .setPosition(100,50)
     .setRange(0,100)
      ;
}


void draw(){
  background(0);

//  for(int i=width;i>0;i-=1){
//   noStroke();
//   float  circle_stroke = map(i, 0, width, 0, 250);
//   fill(circle_stroke,100,100);
//   ellipse(width/2,height/2,i,i); 
//  }

  for(int i=0;i<360;i+=1){
    fill(255,255,255);
    stroke(255,255,255);
    float angle = i * sin(TWO_PI / 360);
    float angle2 = sliderValue2 + ((cos(i * sin(TWO_PI / 22.5))*(sliderValue2/sliderValue)));
    float x = cx + cos(angle)  * angle2;
    float y = cy + sin(angle)  * angle2;
    point(x,y);
    //ellipse(x, y, 20, 20);
  }
  
}

