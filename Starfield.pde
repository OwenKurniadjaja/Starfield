Particle[] Starfield = new Particle[1000];
 void setup()   
 {     
   size(500,500);
   for(int i = 0; i < Starfield.length; i++){
     Starfield[i] = new Particle();
   }
   Starfield[0] = new OddballParticle();
 }   
 void draw()   
 { 
   background(0);
   for(int i = 0; i < Starfield.length; i++){
   Starfield[i].move();
   Starfield[i].show();
   }
 } 
 class Particle    
 {     
   double myX;
   double myY;
   double mySpeed;
   double myAngle;
   int myColor;
   Particle(){
     myX = myX + Math.random()*600;
     myY = myY + Math.random()*600;
     myAngle = (double)(Math.random()*360);
     mySpeed = 3.0;
     myColor = color((int)(Math.random()*256),(int)(Math.random()*256));
   }
   void move(){
     myX = myX + (double)(Math.cos(myAngle)+mySpeed);
     myY = myY + (double)(Math.sin(myAngle)+mySpeed);
     if(myY > 600){
       myY = 0;
     }if(myX > 600){
       myX = 0;
     }
   }
   void show(){
     fill(myColor);
     stroke(myColor);
     ellipse((int)myX,(int)myY,3,3);
     move();
   }
 }
class OddballParticle extends Particle
{
  OddballParticle()
  {
    myX = myX + Math.random()*600;
    myY = myY + Math.random()*600;
    myAngle = (double)(Math.random()*360);
    mySpeed = 3.0;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256));
  }
  void show()
  {
    fill(255);
    ellipse((int)myX,(int)myY,100,100);
  }
}
