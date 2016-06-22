float angle;
float angle1;

void setup() {
  size (400,400, P3D);
  noStroke();
  smooth();
}

void draw() {
  background(0);
  perspective();

  camera(width/2, height/2, 300, width/2, height/2, 0, 0, 1, 0);
  pointLight(200, 200, 200, width/4, height/4, 300); 
 
  translate(width/2, height/2);
  rotateY(angle);
  beginShape(QUADS);
  normal(0, 0, -2);
  fill(50, 50, 200);
  vertex(-100, +100);
  vertex(+100, +100);
  fill(200, 50, 50);
  vertex(+100, -100);
  vertex(-100, -100);
  endShape();
 
  angle +=0.005;
  text(" "+frameRate, width/4, height/4);
  if (key == 'a') {
    angle+=0.1;
  }
}