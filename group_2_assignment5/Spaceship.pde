class Spaceship extends Moon{
  float xpos, ypos, rotaion, R2;
  PShape spaceship;

  Spaceship(){
  }

  void display() {
    pushMatrix();
    translate(700,500);
    pushMatrix();
    rotate(R);
    translate(xPos,yPos);
    pushMatrix();
    rotate(R2);
    shape(spaceship, xpos, ypos, spaceship.width*25, spaceship.height*25);
    popMatrix();
    popMatrix();
    popMatrix();
    R += .01;
    R2 += .01;
  }

}