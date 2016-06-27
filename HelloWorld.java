package HelloProcessing;

import processing.core.*;
import processing.core.PImage;

public class HelloWorld extends PApplet {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		PApplet.main("HelloProcessing.HelloWorld");
		//println("helloWorld");
	}
	
	public void settings() {
		size(512, 512);
	}
		
	PImage img1;
	PImage img2;
	PImage img3;
	PImage img4;

	public void setup(){
	  img1 = loadImage("images/tiger.png");
	  img2 = loadImage("images/tiger.png");
	  img3 = loadImage("images/tiger.png");
	  img4 = loadImage("images/tiger.png");
	  img1.loadPixels();
	  //bubbleSort(img1.pixels);
	  //bubbleSort(img2.pixels);
	  //bubbleSort(img3.pixels);
	  //bubbleSort(img4.pixels);
	  for(int i = 0; i < img1.pixels.length-1; i++) {
	    img1.pixels[i] = ~img1.pixels[i] & (0x00FFFFFF - (0xFF0000FF | 0xFF000000)) | (0xFF0000FF & 0xFF000000);
	    img2.pixels[i] = img2.pixels[i] & (0x00FFFFFF - (0xFF00FF00 | 0xFF000000)) | (0xFF00FF00 & 0xFF000000);
	    img3.pixels[i] = img3.pixels[i] & (0x00FFFFFF - (0xFFFF0000 | 0xFF000000)) | (0xFFFF0000 & 0xFF000000);
	    img4.pixels[i] = img4.pixels[i] & (0x00FFFFFF - (0xFFFF00FF | 0xFF000000)) | (0xFFFF00FF & 0xFF000000);
		//img1.pixels[i] = ~img1.pixels[i];
		//img2.pixels[i] = ~img2.pixels[i];
		//img3.pixels[i] = ~img3.pixels[i];
		//img4.pixels[i] = ~img4.pixels[i];
	  }
	  //println(img1.pixels[0]);
	}

	public void draw(){
	  background(255);
	  image(img1,0,0);
	  image(img2,256,0);
	  image(img3,0,256);
	  image(img4,256,256);
	  
	  //scramble(img1.pixels);
	  //scramble(img2.pixels);
	  //scramble(img3.pixels);
	  //scramble(img4.pixels);
	  
	  //addBlue(img1.pixels);
	  //addGreen(img2.pixels);
	  //addRed(img3.pixels);
	  //addGreen(img4.pixels);
	  //addRedAndBlue(img4.pixels);
	  
	  img1.updatePixels();
	  img2.updatePixels();
	  img3.updatePixels();
	  img4.updatePixels();
	  //println(hex(img1.get(100,100)));
	  
	}

	public void mouseReleased(){
	  bubbleSort(img1.pixels);
	  bubbleSort(img2.pixels);
	  bubbleSort(img3.pixels);
	  bubbleSort(img4.pixels);
	  
	}

	public void addBlue(int[] a){
	  for(int i=2; i < a.length-3; i++){
	    a[i]++;
	  }
	}

	public void addGreen(int[] a){
	  for(int i=2; i < a.length-3; i++){
	    a[i] += 0x00000100;
	  }
	}

	public void addRed(int[] a){
	  for(int i=2; i < a.length-3; i++){
	    a[i] += 0x00010000;
	  }
	}

	public void addRedAndBlue(int[] a){
	  for(int i=2; i < a.length-3; i++){
	    a[i] += 0x00010001;
	  }
	}

	public void scramble(int[] a){
	  int temp;
	  int j;
	  for(int i=2; i < a.length-3; i++){
	    if(random(1) > 0.95){
	      j = (int)random(i-2, i+2);
	      temp = a[i];
	      a[i] = a[j];
	      a[j] = temp;
	    }
	    //a[i]++;

	  }
	  //println(hex(a[5]));
	}

	public void bubbleSort(int[] a){
	  int temp;
	  for(int i=0; i < a.length-1; i++){
	      for(int j=1; j < a.length-i; j++){
	          if(a[j-1] > a[j]){
	              temp=a[j-1];
	              a[j-1] = a[j];
	              a[j] = temp;
	          }
	      }
	  }
	  println("Sorted");
	}
}
