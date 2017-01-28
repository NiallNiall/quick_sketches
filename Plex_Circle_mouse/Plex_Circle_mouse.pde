
int cx, cy;
float lg_rad;

int sliderValue = 100;
int sliderValue2 = 10;

void setup(){
  size(400,400);
  background(5,5,45);
    
}


void draw(){
  fill(0,30);
  noStroke();
  rect(0,0,width,height);

  for(int i=0;i<360;i+=1){
    fill(255,255,255);
    stroke(255,255,255);
    float angle = i * TWO_PI / 360;
    float x = width/2 + cos(angle) * random(mouseY-mouseX/4,mouseY+mouseX/4);
    float y = height/2 + sin(angle) * random(mouseY-mouseX/4,mouseY+mouseX/4);

    ellipse(x,y,5,5);
  }
  
}
