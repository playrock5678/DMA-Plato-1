int i;
int n;
int counter;
void setup() {
size(500,500,P3D);
translate(58,48,0);
}

void draw() 
{
  background(random(255),random(255),random(255));
  i++;
  translate(random(500),random(500), 50*sin(i*2*PI/180.0));
  rotate(i*PI/180.0);
  noFill();
  box(random(200));
  sphere(random(100));
  box(random(200));
  sphere(random(100));
  if (n>50){
    counter=-5;
  }else{
    counter=5;
  }
  n+=counter;
  //sphereDetail(n/5);
  if (key == 'u' ||key == 'S');
    translate(300,300, 50*sin(i*2*PI/180.0));
  if (key == 'j' ||key == 'J');
    translate(100,100, 50*sin(i*2*PI/180.0));
}