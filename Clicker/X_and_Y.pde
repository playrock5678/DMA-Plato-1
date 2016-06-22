int i;
boolean a = false;
void setup() {
  size(1440,900);
  frameRate(200);
  noStroke();
}

void draw() {
 background(0);
 text(" "+mouseX, mouseX, mouseY);
 text(", "+mouseY, mouseX+30, mouseY);
 text("FrameRate:"+frameRate, 10, 20);
 text("FrameCount:"+frameCount,1300,20);
 text("clicks:"+i, 700, 20);
}

void mouseReleased() {
 if(mousePressed);
   i+=1;
   if(a == true);
     i+=1;
}

void keyReleased() {
  if(key == '1');
    if (i>10);
      a = !a;
      i-=10;
}