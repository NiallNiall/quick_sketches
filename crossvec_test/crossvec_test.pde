int x1,x2,y1,y2;
float dx,dy;
PVector direction;

void setup(){
 size(400,400);
 
 background(0);
 
}

void draw(){
  noStroke();
  fill(0,200);
  rect(0,0,width,height);
  stroke(250);
  fill(250);
  x1 = width/2;
  y1 = height/2;
  x2 = mouseX;
  y2 = mouseY;
  
  line(x1,y1,x2,y2);
  direction = new PVector(x2-x1,y2-y1);
  float lineLength = sqrt(sq(direction.x)+sq(direction.y));
//  println(lineLength);
  stroke(0,100,200);
  
  line(x1,y1,x1+direction.x,y1);
  line(x2,y2,x1+direction.x,y1);
  
  text(direction.x, x2, y1); 
  text(direction.y, x1, y2); 
  
  stroke(200,100,0);
  
  line(x1,y1,x1,y1+direction.y);
  line(x2,y2,x1,y1+direction.y);
  
  float rad = atan(direction.y/direction.x);
  float deg2 = degrees(rad);
  int deg = int(deg2);
  println(deg);
  
  //normalise to get just the direction
  direction.normalize();
  // which you can multiply by an length to get an exact 
  direction.mult(50);
  
//  dx = (x2-x1);
//  dy = (y2-y1);
  stroke(0,250,0);
  line(x2,y2,x2+direction.y,y2-direction.x);
  line(x2,y2,x2-direction.y,y2+direction.x);
  noStroke();
  for(int i=0+deg;i<360+deg;i+=45){
    float angle = i * TWO_PI / 360;
    float x = mouseX + cos(angle) * 50;
    float y = mouseY + sin(angle) * 50;
    ellipse(x,y,5,5);
  }

  noFill();
stroke(250);  
  ellipse(width/2,height/2,lineLength*2,lineLength*2);
  
}
