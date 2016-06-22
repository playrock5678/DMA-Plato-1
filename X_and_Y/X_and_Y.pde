int i=0;
boolean a = false;
boolean b = false;
boolean c = false;
boolean d = false;
boolean e = false;
boolean f = false;
boolean g = false;
boolean h = false;
boolean j = false;
boolean k = false;
boolean z = false;
boolean y = false;
boolean x = false;
boolean w = false;
boolean v = false;
boolean u = false;
boolean t = false;
boolean s = false;
boolean r = false;
boolean q = false;
void setup() {
  size(1440,900);
  frameRate(200);
  noStroke();
  noCursor();
}

void draw() {
 background(0);
 textSize(50);
 fill(0,0,255);
 text("Clicks: "+i, 640, 50);
 textSize(20);
 fill(255,255,0);
 ellipse(mouseX,mouseY,55,55);
 fill(color(255,0,0));
 //text(" "+mouseX, mouseX, mouseY);
 //text("   ,   "+mouseY, mouseX+30, mouseY);
 //text("FrameRate:"+frameRate, 10, 20);
 //text("FrameCount:"+frameCount,1300,20);
 text("Press 1 for upgrade cost:10 clicks",15,50);
 if(a == true){
   text("Press 2 for upgrade cost:50 clicks",15,100);
   fill(0,255,0);
   text("Press 1 for upgrade cost:10 clicks",15,50);
   if(b ==true){
     fill(255,0,0);
     text("Press 3 for upgrade cost:100 clicks",15,150);
     fill(0,255,0);
     text("Press 2 for upgrade cost:50 clicks",15,100);
     if(c ==true){
       fill(255,0,0);
       text("Press 4 for upgrade cost:500 clicks",15,200);
       fill(0,255,0);
       text("Press 3 for upgrade cost:100 clicks",15,150);
       if(d ==true){
         fill(255,0,0);
         text("Press 5 for upgrade cost:1000 clicks",15,250);
         fill(0,255,0);
         text("Press 4 for upgrade cost:500 clicks",15,200);
         if(e ==true){
           fill(255,0,0);
           text("Press 6 for upgrade cost:2000 clicks",15,300);
           fill(0,255,0);
           text("Press 5 for upgrade cost:1000 clicks",15,250);
           if(f ==true){
             fill(255,0,0);
             text("Press 7 for upgrade cost:4000 clicks",15,350);
             fill(0,255,0);
             text("Press 6 for upgrade cost:2000 clicks",15,300);
             if(g ==true){
               fill(255,0,0);
               text("Press 8 for upgrade cost:10000 clicks",15,400);
               fill(0,255,0);
               text("Press 7 for upgrade cost:4000 clicks",15,350);
               if(h ==true){
                 fill(255,0,0);
                 text("Press 9 for upgrade cost:20000 clicks",15,450);
                 fill(0,255,0);
                 text("Press 8 for upgrade cost:10000 clicks",15,400);
                 if(j ==true){
                   fill(255,0,0);
                   text("press 0 for ??? cost:??? clicks",15,500);
                   fill(0,255,0);
                   text("Press 9 for upgrade cost:20000 clicks",15,450); 
                   if(k ==true){
                     fill(0,255,0);
                     text("press 0 for ??? cost:??? clicks",15,500);
                   }
                 }
               }  
             }  
           }  
         }  
       }  
     }
   }
 }
 loop();
}


void mouseReleased() {
   i+=1;
   if(a == true){//ix2
     i+=1;
     if(b == true){//ix5
       i+=3;
       if(c == true) {//ix10
         i+=5;
         if(d == true) {//ix20
           i+=10; 
           if(e == true) {//ix50
             i+=30;
             if(f == true) {//ix100
               i+=50; 
               if(g == true){//ix200
                 i+=100; 
                 if(h == true) {//ix500
                   i+=300; 
                   if(j == true) {//ix1000
                     i+=500;
                     if(k == true) {//???
                       text("hax activated!",width/2,height/2);
                       //if(mousePressed)
                       i+=random(100000);
                     }  
                   }
                 }
               }
             }
           }
         }
       }
     }
   }
}

void keyReleased() {
  if(key == '1'){//ix2
    if(z == false){
      if (i>9){
        a = !a;
        z = !z;
        i-=10;
      }
    }
  }
    
    if(key == '2'){//ix5
      if(y == false){
        if (i>49){
          b = !b;
          y = !y;
          i-=50;
        }
      }
    }
    if(key == '3'){//ix10
      if(x == false) {
        if (i>99){
          c = !c;
          x = !x;
          i-=100;
        }
      }
    } 
     if(key == '4'){//ix20
      if(w == false) {
        if (i>499){
          d = !d;
          w = !w;
          i-=500;
        }
      }
    } 
    if(key == '5'){//ix50
      if(v == false) {
        if (i>999){
          e = !e;
          v = !v;
          i-=1000;
        }
      }
    } 
    if(key == '6'){//ix100
      if(u == false) {
        if (i>1999){
          f = !f;
          u = !u;
          i-=2000;
        }
      }
    } 
    if(key == '7'){//ix200
      if(t == false) {
        if (i>3999){
          g = !g;
          t = !t;
          i-=4000;
        }
      }
    }
    if(key == '8'){//ix500
      if(s == false) {
        if (i>9999){
          h = !h;
          s = !s;
          i-=10000;
        }
      }
    } 
    if(key == '9'){//ix1000
      if(r == false) {
        if (i>19999){
          j = !j;
          r = !r;
          i-=20000;
        }
      }
    } 
     if(key == '0'){//ix1000
      if(q == false) {
        if (i>99999){
          k = !k;
          q = !q;
          i-=100000;
        }
      }
    } 
}