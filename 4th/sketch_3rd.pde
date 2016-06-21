import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;

void setup() {
  size(640, 480);
  video = new Capture(this, 640/2, 480/2);
  opencv = new OpenCV(this, 640/2, 480/2);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  //stroke(random(255), random(255), random(255));
  stroke(0,0,0);
  strokeWeight(3);
  Rectangle[] faces = opencv.detect();
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
    //rect(faces[i].x, faces[i].y, faces[i].x+30, faces[i].y+50);  
    //fill(random(255),random(255),random(255));
    fill(0,0,0);
    ellipse(faces[i].x+30, faces[i].y+50, 30,30);
    rect(faces[i].x+10, 20, faces[i].x+10, 20); 
    rect(faces[i].x+30, 0, faces[i].x-30, 20); 
  }
}
void captureEvent(Capture c) { 
  c.read();
}