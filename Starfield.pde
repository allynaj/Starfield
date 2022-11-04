Particle [] stars = new Particle[500];

void setup() {
  size(800,800);
  noStroke();
  background(0,0,50);
  for(int i = 0; i < 8; i++) 
    stars[i] = new OddballParticle();
  for(int i = 8; i < stars.length; i++)
    stars[i] = new Particle();
}
void draw() {
  background(0,0,50);
  for(int i = 0; i < stars.length; i++) {
    stars[i].show();
    stars[i].move();
  }
}

class Particle {
  double mySpeed, myAngle;
  float myX, myY, mySize1, mySize2;
  Particle() {
    myX = (float)(Math.random()*600)+100;
    myY = 400;
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*1.5;
    mySize1 = (float)(Math.random()*5);
    mySize2 = (float)(Math.random()*20);
  }
  void show() {
    fill(255, 255, 0);
    ellipse(myX, myY, mySize2, mySize1);
    ellipse(myX, myY, mySize1, mySize2);
  }
  
  void move() {
    myX += Math.cos(myAngle)* mySpeed;
    myY += Math.sin(myAngle)* mySpeed; 
  }
  
}

class OddballParticle extends Particle {
  OddballParticle() {
    myX = myY = 400;
    myAngle = Math.random()*5*Math.PI;
    mySpeed = Math.random()*3;
    mySize1 = (float)(Math.random()*5);
    mySize2 = (float)(Math.random()*50)+40;
  }
  void show() {
    fill(220,220,200);
    ellipse(myX, myY, mySize2, mySize2);
    fill(0,0,50);
    ellipse(myX+20, myY, mySize2-10, mySize2-10);
  }
  
  void move() {
    myX += Math.cos(myAngle)* mySpeed;
    myY += Math.sin(myAngle)* mySpeed; 
  }
}
