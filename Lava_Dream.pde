import java.util.*;

LinkedList<Ball> balls = new LinkedList<Ball>();
void setup(){
  size(640, 640, P2D);
  colorMode(HSB, 360);
  smooth();
  for(int i = 0; i < 360; i+= 30){
    PVector v = new PVector(random(-5, 5), random(-5, 5));
    v.normalize();
    v.setMag(random(1,2));
    balls.add(new Ball(random(20, height - 20), 
    random(20, height - 20), (int)random(150, 200), color(i, 360, 360), v));
    println(balls.getLast().c);
  }
}

void draw(){
  background(217, 64, 53);
  for(Ball ball : balls){
    ball.update();
    ball.display();
  }
  //filter(BLUR, 50);
}