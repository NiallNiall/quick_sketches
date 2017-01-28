int mid;
float extend, extend2;

void setup(){
 size(400,400); 
 mid = height/2;
 
 extend = 50;
}

void draw(){
  background(0);
  stroke(250);
  
   
  
  for(float i=HALF_PI;i<PI;i+=(PI/10)){
   float mouser = mouseX-cos(i)*50;
   
   extend2 = extend * sin(i);
   
   line(mouser,mid-extend2,mouser,mid+extend2); 
  }
}
