  
import processing.video.*;

Capture cam;

void setup() {
  strokeWeight(5);
  size(640, 480);

  String[] cameras = Capture.list();
  
  if (cameras.length == 0) {
    println("There are no cameras available for capture.");
    exit();
  } else {
    println("Available cameras:");
    for (int i = 0; i < cameras.length; i++) {
      println(cameras[i]);
    }
    
    // The camera can be initialized directly using an 
    // element from the array returned by list():
    cam = new Capture(this, cameras[0]);
    cam.start();     
  }      
}

void draw() {
  if (cam.available() == true) {
    cam.read();
  }
  image(cam, 0, 0);
  // The following does the same, and is faster when just drawing the image
  // without any additional resizing, transformations, or tint.
  //set(0, 0, cam); 
  if(mousePressed ==true){
    //background(random(255),random(255),random(255),80);
    //ellipse(mouseX, mouseY, 10, 10);
    ellipse(mouseX, mouseY, random(200), random(200));
    line(pmouseX, pmouseY, mouseX, mouseY);
    //line(random(500), random(500), random(500), random(500));
      //if(keyPressed(2 ==true));
        //line(pmouseX, pmouseY, mouseX, mouseY);
  }
  stroke(random(255), random(255), random(255));
  strokeWeight(random(100));
  //blendMode(SCREEN);
  //rectMode(CENTER);
  //rect(50,50,50,50);
  ellipse(50,50,100,100);
  ellipse(30,30,20,20);
  ellipse(70,30,20,20);
  ellipse(50,75,40,40);
}