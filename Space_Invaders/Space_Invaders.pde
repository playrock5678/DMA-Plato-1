float x = 100;
float y = 360;
float angle1 = 0.0;
float segLength = 50;
 
ArrayList bullets = new ArrayList();
ArrayList enemies = new ArrayList(); 
 
int score;
int numCol= 10;
int Game_over = 0;
 
Boolean keyLftPressed = false, keyRghtPressed = false;
//Boolean mouseLftPressed = false;
 
Player player1;
Enemy testEnemy;
 
void setup() {
  noCursor();
  size(600,400);
  imageMode(CENTER);
  startGame();
}
 
void startGame(){
  player1 = new Player(); 
  bullets = new ArrayList();
  enemies = new ArrayList(); 
  spawnEnemies();
}
 
 
void draw() {
  background(200,0,255);
  fill(0);
  rect(0,390,600,10);
  fill(222,222,222);
  fill(255);
  text(score, 20,20);
  player1.display();
  movePlayer1();
  handleEnemies();
  handleBullets();
  gamewon();
}
 
void spawnEnemies() {
  for (int i = 0; i < 3; i++) {
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60 ;
    enemies.add(new Enemy(x, y));
  }
}
 
void handleEnemies() {
  for (int i = 0; i < enemies.size(); i++) {
    Enemy enemy = (Enemy) enemies.get(i);
    enemy.move();
    enemy.display();
    enemy.hitCheck();
    if (random(1) > .995) {
    }
  }
}
 
void handleBullets() {
  for (int i = 0; i < bullets.size(); i++) {
    Bullet b = (Bullet) bullets.get(i);
    b.move();
    b.display();
  }
}
 
void movePlayer1() {
  if (keyLftPressed) {
    player1.x -=10;
  }
  if (keyRghtPressed) {
    player1.x +=10;
  }
}
 
void keyPressed() {
  if (keyCode == LEFT) {
    keyLftPressed = true;
  }
  else {
    if (keyCode == RIGHT) {
      keyRghtPressed = true;
    }
    else {
      if (mousePressed) {
        player1.shoot();
       }
      }
     }
    }
 
void keyReleased() {
  if (keyCode == LEFT) {
    keyLftPressed = false;
  }
  else {
    if (keyCode == RIGHT) {
      keyRghtPressed = false;
    }
  }
}  
 
 //Bullet
 
class Bullet {
  float x, y;
  float velocity;
 
  Bullet(float x, float y, float velocity) {
    this.x = x;
    this.y = y;
    this.velocity = velocity;
  }
 
  void display(){
    fill(80);
    rect(this.x, this.y, 5,15);
  }
 
  void move(){
    this.y+=this.velocity;
    if (this.y > height || this.y < 0){
      bullets.remove(this);
    }
  }
}
 
//Enemy
 
class Enemy {
  float x, y;
  float velocity;
  Enemy(float x, float y) {
    this.x = x;
    this.y = y;
    this.velocity = 3;
  }
 
  void display() {
    fill(0,255,0);
    ellipse(this.x, this.y, 30, 30);
    noFill();
  }
 
  void move() {
    this.x+=this.velocity;
    if (this.x > width*.9) {
      this.x = width*.9;
      this.velocity *= -1;
      this.y+=30;
    }
 
    if (this.x < width*.1) {
      this.velocity*=-1;
      this.x = width*.1;
      this.y+=30;
    }
  }  
 
  void hitCheck() {
    for (int i = 0; i < bullets.size(); i++){
    Bullet b = (Bullet) bullets.get(i);      
    float distBetween = dist(b.x, b.y, this.x, this.y);
    if (distBetween < 15 && b.velocity < 0){
      score++;
    enemies.remove(this);
    float x = width*.1 + i%numCol*50;
    float y = 60 + int(i/numCol)*60 ;
    enemies.add(new Enemy(x, y));
 
      }
    }
  }
}
 
class Player {
  float x, y;
  int lives;
  int score;
  boolean canShoot;
  int timeLastShot;
  int coolDown;
 
  Player() {
    this.x = width/2;
    this.y = height-50;
    this.lives = 3;
    this.timeLastShot = 0;
    this.coolDown = 200;
  }
 
  void display() {
    rect(this.x, this.y, 30, 30);
  }
 
  void shoot() {
    if (millis() - timeLastShot > coolDown) {
      Bullet bullet = new Bullet(this.x+12.5, this.y, -5);
      bullets.add(bullet);
      timeLastShot = millis();
    }
  }
 
  void gameFinish() {
    {
      for (int i = 0; i < 3; i++)
           {      
    fill(color(255,0,0));
    fill(255, 0, 0);
    textAlign(CENTER);
    text("Game over", width/2, height/2 - 50);
    text(" Final score : "+ score, width/2, height/2 + 50);
           }
    }
  }
}
 
 void gamewon()
    {
      if (score == 20)
      {
    background(0);
    fill(color(255,0,0));
    fill(255, 0, 0);
    textAlign(CENTER);
    text("Congratulations you won!", width/2, height/5);
    text(" Your final score is : "+ score, width/2, height/5 + 30);
    text("Do you wish to continue?",width/2, height/2);  
    text(" If so press Y to Continue or N to exit ", width/2, height/2+30);
    noLoop();
      }
    }     