void setup(){
  size(200,200);
 
    //PVector newPos = calculate(180, 300);
    
    //println(newPos.x);
    for(int i =0; i <360; i += 60){
     PVector newPos = calculate(i, 100);
     ellipse(newPos.x, newPos.y, 20, 20);
    }
  
    int newAngle = 180;
    PVector printPos = calculate(newAngle, 300);
    println(printPos); 
}


PVector calculate(float i, float radius){
  float angle = i * TWO_PI / 360;
  float x = 0 + cos(angle) * radius;
  float y = 0 + sin(angle) * radius;
  
  PVector pos = new PVector(x,y);
  
  return pos;
}