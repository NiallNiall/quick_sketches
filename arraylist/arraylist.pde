
ArrayList<PVector> newPoints = new ArrayList<PVector>();

void setup() {
  size(800, 800);
  
  newPoints.add(new PVector(400 , 400));
   
}

void draw() {
  background(42,48,63);
  
  for(int i = 0; i < newPoints.size(); i ++){
    PVector newPoint = newPoints.get(i);
   ellipse(newPoint.x, newPoint.y, 10,10);
  }
  
}

 
 
void mousePressed() {  
  // Objects can be added to an ArrayList with add()
  newPoints.add(new PVector(mouseX, mouseY));
}