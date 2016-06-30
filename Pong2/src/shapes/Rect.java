package shapes;

import java.awt.Color;

import processing.core.PApplet;

public class Rect {
	
	PApplet p;
	private float x;
	private float y;
	private float width;
	private float height;
	private Color innerColor;
	
	public Rect(PApplet tempP, float tempX, float tempY, float tempW, float tempH){
		p = tempP;
		x = tempX;
		y = tempY;
		width = tempW;
		height = tempH;
		innerColor = new Color(255,25,255);
	}
	public void paint() {
		p.noStroke();
		//p.fill(innerColor.getRed(),innerColor.getGreen(),innerColor.getBlue());
		p.fill(255);
		p.rect(x,y,width,height);
	}
	public void setX(float newX){
		x = newX;
	}
	public void setY(float newY){
		y = newY;
	}
	public void setWidth(float newW){
		width = newW;
	}
	public void setHeight(float newH){
		height = newH;
	}
	public float getX(){
		return x;
	}
	public float getY(){
		return y;
	}
	public float getWidth(){
		return width;
	}
	public float getHeight(){
		return height;
	}
	public void display() {
		p.fill(255);
		p.rect(x,y,width,height);
	}
}
