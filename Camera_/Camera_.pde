int Speed = 3; 

int Line_X = 0;
int Line_Y = 80; 
int Line_Z = -100;

int Line_Y_Add = -30; 


void setup() {

 size(640, 360, P3D);
 fill(204);
 noSmooth(); 

}

void draw() {

 lights();
 background(color(0,0,54));
 MyNiceFloor();
 stroke(255);

 line ( 100 + Line_X, Line_Y, Line_Z, 
 120 + Line_X, Line_Y_Add + Line_Y, 10 + Line_Z);

 MyBox ( Line_X* .5, Line_Y, 10, 
 4, 7, 10, 
 0, 0, 0 ); 

 camera(Line_X*2+5, +Line_Y+10, Line_Z-20, // eyeX, eyeY, eyeZ      
 100 + Line_X, +Line_Y, Line_Z,          // centerX, centerY, centerZ         
 0.0, 1.0, 0.0);                         // upX, upY, upZ 

 Line_X+= Speed;
 if(Line_X > 600){
    Line_X=0;
 }
} 

void MyNiceFloor() {

 noStroke();

 for (int i = 0; i < 40; i = i+1) {
   for (int j = 0; j < 40; j = j+1) {

     if (i%2 == 0) { 
       if ((j%2 == 0)) { 
         fill (255,0,0); 
       }
       else 
       {
         fill ( 103 ); 
       }
     }  
     else {
       if (j%2 == 0) { 
         fill ( 103 ); 
       }
       else 
       {
         fill (255,0,0); 
       }
     }

     pushMatrix();
     translate (40*i+100,160,40*j-640 );
     box (40,7,40);

     popMatrix();

   } // for 
 } // for 


}

void MyBox ( float x,float y,float z, 
float w,float h,float d,  
float RotateX, float RotateY, float RotateZ ) {

 noStroke(); 
 fill (#FEFF03);

 pushMatrix();

 rotateX ( radians(RotateX));
 rotateY ( radians(RotateY));
 rotateZ ( radians(RotateZ ));
 translate ( x,y,z );
 box ( w,h,d );

 popMatrix();

}