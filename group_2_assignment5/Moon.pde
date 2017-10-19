class Moon {
  float xPos, yPos, radius, R;
  PShape moon;
  PImage moonImg;
  PVector v;
  
  Moon() {}
  
  void display() {
    pushMatrix();
    // perpendicular vector
    PVector = v2 = new PVector(1,0,1);
    PVector p = v.cross(---);
    translate(700, 500, 0);
    pushMatrix();
    rotateY(R);
    translate(xPos, yPos);
    rotateY(R);
    moon = createShape(SPHERE, radius);
    moon.setTexture(moonImg);
    shape(moon);
    popMatrix();
    popMatrix();
    R = R + 0.01;
  }
}
class Satellite extends Moon {
  float sXpos, sYpos, R2;
  PShape satellite;
  
  Satellite() {}
  
  void display() {
    pushMatrix();
    translate(700, 500, 0);
    pushMatrix();
    rotateY(R);
    translate(xPos, yPos);
    pushMatrix();
    rotateY(R2);
    translate(sXpos, sYpos);
    rotate(R2);
    shape(satellite, sXpos+100, sYpos, satellite.width*25, satellite.height*25);
    popMatrix();
    popMatrix();
    popMatrix();
    R = R + 0.01;
    R2 = R2 + 0.01;
  }
}