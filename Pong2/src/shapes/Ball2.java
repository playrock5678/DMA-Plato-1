package shapes;

import java.awt.Color;
//import java.lang.reflect.Array;
import java.util.ArrayList;

import processing.core.PApplet;

public class Ball2 extends PApplet {
	public static void main(String[] args) {
		PApplet.main("shapes.Ball2");
	}
	
	//Ball[] b = new Ball[1];
	Ball ball1;
	Ball ball2;
	Ball ball3;
	//Ball ball2;
	public Rect paddle;
	Rect rect1;
	Rect rect2;
	int Level;
	int LastLevel = Level;
	int time;
	int Score;
	int Stage;
	private float x;
	private float y;
	private float width;
	private float height;
	public int Life;
	//ArrayList<Ball> b = new ArrayList<Ball>();
	ArrayList<Rect> bricks = new ArrayList<Rect>();

	private void addBricks(){
		for(int i = 0; i < 1; i++){
			for(int j = 0; j < 1;j++){
				bricks.add(new Rect(this,40*i,100+15*j,35,10));
			}
		}
	}
	private void drawBricks(){
		for(int i = 0;i<bricks.size();i++){
			bricks.get(i).paint();
		}
	}
	public void settings(){
		size(400,600);
	}
	
	public void setup(){
		background(0);
		frameRate(60);
		//for(int i = 0; i < b.length; i++){
			//b[i] = new Ball(this,50,50,10,Color.GREEN);
		//}
		paddle = new Rect(this,200,550,60,20);
		ball1 = new Ball(this,200,300,10,Color.GREEN);
		ball2 = new Ball(this,200,300,10,Color.GREEN);
		ball3 = new Ball(this,200,300,10,Color.GREEN);
		//rect1 = new Rect(this,50,50,50,50);
		//rect2 = new Rect(this,0,0,20,20);
		addBricks();
		//background(0);
		Life = 3;
		Level = 1;
	}
	public void draw(){
		background(0);
		fill (255);
		fill(0,0,0,15);
		rect(0,0,width,height);
		textSize(15);
		text("Lives: "+ Life,20,20, 255);
		text("Level: "+ Level,325,20, 255);
		text("Score: "+ Score,150,20, 255);
		
		if(Life == 4){
			Life = 3;
		}
		
		//ball1.update();
		//ball1.paint();
		
		paddle.display();
		updatepaddle();
		drawBricks();
		updateGame();
		if(Life == 3){
			ball1.update();
			ball1.paint();
		}
		if(Life == 2){
			ball2.update();
			ball2.paint();
		}
		if(Life == 1){
			ball3.update();
			ball3.paint();
		}
	}
	public float getX(){
		return x;
	}
	public float getY(){
		return y;
	}
	public void setWidth(float newW){
		width = newW;
	}
	public void setHeight(float newH){
		height = newH;
	}
	private void updatepaddle() {
		paddle.setX(mouseX - 30);
		paddle.paint();
	}
	public void updateGame(){
		//ball1
		if(ball1.getX() > paddle.getX()
			&& ball1.getX() < paddle.getX() + 60
			&& ball1.getY() + ball1.getsize()/2 >paddle.getY()){
			
				ball1.setVelocity(ball1.getVX(), -ball1.getVY());
		}
		
		for(int i1 = 0; i1 < bricks.size(); i1++){
			Rect b = bricks.get(i1);
			if(ball1.getX() > b.getX() && ball1.getX() < b.getX()+60 && (ball1.getY() < b.getY()+20 && ball1.getY() > b.getY())){
				ball1.setVelocity(ball1.getVX(), -ball1.getVY());
				bricks.remove(b);
				Score +=10;
			}
		}
		
		//ball2
		if(ball2.getX() > paddle.getX()
				&& ball2.getX() < paddle.getX() + 60
				&& ball2.getY() + ball2.getsize()/2 >paddle.getY()){
						
				ball2.setVelocity(ball2.getVX(), -ball2.getVY());
					}
		for(int i1 = 0; i1 < bricks.size(); i1++){
			Rect b = bricks.get(i1);
			if(ball2.getX() > b.getX() && ball2.getX() < b.getX()+60 && (ball2.getY() < b.getY()+20 && ball2.getY() > b.getY())){
				ball2.setVelocity(ball2.getVX(), -ball2.getVY());
				bricks.remove(b);
				Score +=10;
			}
		}
		
		
		if(ball3.getX() > paddle.getX()
			&& ball3.getX() < paddle.getX() + 60
			&& ball3.getY() + ball3.getsize()/2 >paddle.getY()){
					
			ball3.setVelocity(ball3.getVX(), -ball3.getVY());
		}
		
		for(int i1 = 0; i1 < bricks.size(); i1++){
			Rect b = bricks.get(i1);
			if(ball3.getX() > b.getX() && ball3.getX() < b.getX()+60 && (ball3.getY() < b.getY()+20 && ball3.getY() > b.getY())){
				ball3.setVelocity(ball1.getVX(), -ball3.getVY());
				bricks.remove(b);
				Score +=10;
			}
		}
		if(bricks.size() == 0){
			time += 1;
			background(0);
			textSize(25);
			text("Level: "+ Level+" Complete!" ,115,300, 255);
			textSize(15);
			ball1.setVelocity(0,0);
			ball1.setX(250);
			ball1.setY(300);
			ball2.setVelocity(0,0);
			ball2.setX(250);
			ball2.setY(300);
			ball3.setVelocity(0,0);
			ball3.setX(250);
			ball3.setY(300);
			if(time == 120 ){
				Life +=1;
				Level += 1;
				Score += 100;
				ball1.setVelocity(Level+1, -Level-1);
				ball2.setVelocity(Level+1, -Level-1);
				ball3.setVelocity(Level+1, -Level-1);
				addBricks();
				time = 0;
			}
		}
		if(Level != LastLevel){
			if(Level == 11);
				Stage += 1;
				Level = 1;
			    Level = LastLevel;
		}
		else
		{
			Level = LastLevel;
		}
		if(ball1.getY() > 610){
			//Life -=1;
			//if(Life == 0){
			Life = 2;
			//background(0);
			//textSize(25);
			//text("You Lost",150,300, 255);
			ball1.setVelocity(0,0);
			}
		if(ball2.getY() > 610){
			Life = 1;
			ball2.setVelocity(0,0);
			}
		if(ball3.getY() > 610){
			background(0);
			textSize(25);
			text("You Lost",150,300, 255);
			ball3.setVelocity(0,0);
			}
		}
	}




