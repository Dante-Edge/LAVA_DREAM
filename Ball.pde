
class Ball{
  float x, y;
  int r, w, h;
  color c;
  PVector velocity;
  PGraphics p;
  
  Ball(float x, float y, int r,color c, PVector velocity){
    this.x = x;
    this.y = y;
    this.r = r;
    this.c = c;
    this.w = 2 * r + 500;
    this.h = this.w;
    this.velocity = velocity;
    this.p = createGraphics(w, h);
    p.beginDraw();
    p.clear();
    p.background(1,1,360,0);
    p.noStroke();
    p.fill(c);
    p.ellipse(width / 2, height / 2, r * 2, r * 2);
    p.filter(BLUR, 50);
    p.endDraw();
  }
  
  void display() {
    imageMode(CENTER);
    image(p, x, y, w, h);
  }
  void update(){
    this.x += velocity.x;
    this.y += velocity.y;
    if(this.x < 0 || this.x > width){
      this.velocity.x = -this.velocity.x;
    }
    if(this.y < 0 || this.y > height){
      this.velocity.y = -this.velocity.y;
    }
  }
}