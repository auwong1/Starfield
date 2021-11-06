Particle[] star;
void setup(){
  size(500, 500);
  background(0);
  star = new Particle[50];
  for(int i = 0; i < 10; i++){
    star[i] = new Rocks();
  }
  for(int i = 10; i < star.length; i++){
    star[i] = new Particle();
  }
}
void draw(){
  background(0);
  for(int i = 0; i < star.length; i++){
    star[i].move();
    star[i].reset();
    star[i].show();
  }
}

class Particle{
  double myX, myY, mySpeed, myAngle;
  int myColor, myWidth, myHeight;
  Particle(){
    myX = myY = 250;
    myAngle = (Math.random() * Math.PI) * 2;
    mySpeed = 900000;
    myColor = color(255);
    myWidth = 5;
    myHeight = 5;
  }
  void show(){
    noStroke();
    fill(myColor);
    ellipse((float)myX, (float)myY, myWidth, myHeight);
  }
  void move(){
    myX += (double)(Math.cos(myAngle) * mySpeed);
    myY += (double)(Math.sin(myAngle) * mySpeed);
  }
  void reset(){
    if(myY >= 500 && myX >= Math.random() * 500){
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if(myY >= Math.random() * 500 && myX >= 500){
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
   if(myY <= 0 && myX <= 0){
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if(myY <= 0 && myX >= Math.random() * 500){
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
    if(myY >= Math.random() * 500 && myX <= 0){
      mySpeed = Math.random() * 2 + 1;
      myX = 250 + (Math.cos(myAngle) * 100) + (double)(Math.cos(myAngle) * mySpeed);
      myY = 250 + (Math.sin(myAngle) * 100) + (double)(Math.sin(myAngle) * mySpeed);
    }
  }
}
class Rocks extends Particle{
  Rocks(){
    myX = myY = 250;
    myAngle = (Math.random() * Math.PI) * 2;
    mySpeed = Math.random() * 5 + 1;
    myColor = color(100);
    myWidth = 15;
    myHeight = 15;
  }
}
