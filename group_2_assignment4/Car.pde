class Car {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float angle;

  
  Car () {
    c = color(255);
    xpos = 1650;
    ypos = 867;
    xspeed = 1;
    angle = random(0,TWO_PI);
  }
  
  void display() {
    fill(255,0,0); //drawing the bus
    stroke(0);
    rect(xpos,ypos,100,40);
    fill(255);
    ellipseMode(CENTER);
    ellipse(xpos+25,ypos+40,20,20);
    ellipse(xpos+75,ypos+40,20,20);
    stroke(0);
    pushMatrix();
      translate(xpos+25,ypos+40);
      rotate(angle*4);
      line(0,9,0,-9);
      line(-10,0,10,0);
    popMatrix();
    pushMatrix();
      translate(xpos+75,ypos+40);
      rotate(angle*4);
      line(0,9,0,-9);    
      line(-10,0,10,0);
    popMatrix();
  }
  
  void drive() {
    xpos = xpos + xspeed;
    if (xpos > width) {
      xpos = 0;
    }
  }
}