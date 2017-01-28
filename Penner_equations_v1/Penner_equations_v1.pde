float r1, r2, mW, mH, r;

void setup() {
  r1 = 50;
  r2 = 100;
  size(400, 400);
  background(0);
  mW = width/2;
  mH = height/2;
  
  
  stroke(250);

  float dR = r2 - r1;

  for (int i=0;i<width;i+=5) {
    float t = i;
    float b = r1;
    float c = dR;
    float d = width;
    
    t /= d;    
    r = c*t*t + b;
    
    println(r);
    line(i, mH+r, i, mH-r);
  }
  
}

void draw() {
  
}

