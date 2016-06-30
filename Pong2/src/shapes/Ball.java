package shapes;

import processing.core.PApplet;
import java.awt.Color;
import java.lang.reflect.Array;
import java.util.ArrayList;

public class Ball {
	PApplet p;
	float px;
	float py;
	float x;
	float y;
	float vx;
	float vy;
	float size;
	Color color;
	int randomintx;
	int randominty;
	
	public Ball(PApplet tempp, float nx, float ny, float nsize, Color c){
		
		p=tempp;
		x = nx;
		y = ny;
		size = nsize;
		color = c;
		
		randomintx = (int)p.random(0,10);
		randominty = (int)p.random(0,10);
		
		if(randomintx%2 == 0){
		vy = -2;
		}
		else
		{
		vy = 2;
		}
		if(randominty%2 == 0){
		vx = -2;
		}
		else
		{
		vx = 2;
		}
	}
	public void update() {
		x = x + vx;
		y = y + vy;
		
		
		if(x > p.width-5 || x < 5){
			vx = -vx;
		}
		if(y > p.height+20 || y < 5){
			vy = -vy;
		}
		size = 10;
	}
	public void paint(){
		p.noStroke();
		p.fill(color.getRed(), color.getGreen(), color.getBlue());
		p.ellipse(x,y,size,size);
	}
	public float getX(){
		return x;
	}
	public float getY(){
		return y;
	}
	public void setX(float newX) {
		x = newX;
	}
	public void setY(float newY){
		y = newY;
	}
	public float getsize(){
		return size;
	}
	public void setVelocity(float tempvx, float tempvy){
		vx = tempvx;
		vy = tempvy;
	}
	public float getVX(){
		return vx;
	}
	public float getVY(){
		return vy;
	}

}
