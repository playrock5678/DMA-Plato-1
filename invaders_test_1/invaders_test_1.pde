
float x = 100;
float y = 360;
float angle1 = 0.0;
float segLength = 50;

void setup() {
  noCursor();
  //imageMode(CENTER);
  size(640, 360);
  strokeWeight(20.0);
  stroke(0);
}


void draw() {
  background(255);
  
  float dx = mouseX - x;
  float dy = mouseY - y;
  angle1 = atan2(dy, dx);  
  x = mouseX - (cos(angle1) * segLength);
 
  segment(x, y, angle1); 
  rectMode(CENTER);
  rect(x, y, 20, 20);
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(3*PI/2);
  line(0, 0, segLength, 0);
  popMatrix();
}