class Sun {
  float x;
  float y;
  int loopc=0;
  
  Sun (float xp, float yp) {
    x = xp;
    y = yp;
  }
  void display() {
    x=x+1;
    y=y-1;
    int ro=(loopc+=10)/20;
    pushMatrix();
    translate(x,y);
    rotate(radians(ro));
    line(0, 0, -10, 100);
    line(0, 0, -100, 100);
    line(0, 0, 100, 10);
    line(0, 0, 100, -100);
    line(0, 0, -100, -10);
    line(0, 0, -100, -100);
    line(0, 0, 10, -100);
    line(0, 0, 100, 100);
    fill(255,260,122);
    ellipse(0, 0, 100, 100);
    popMatrix();
    
    if (y == 0) {
      y = 600;
      x = 10;
    }
  }
}