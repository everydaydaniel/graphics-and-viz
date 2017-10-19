class Spaceship extends Moon{
  float xpos, ypos, rotaion, R2;
  PShape spaceship;

  Spaceship(){
  }

  void display() {
    pushMatrix();
    translate(700,500,0);
    pushMatrix();
    rotate(R);
    translate(xPos,yPos);
    rotate(R);
    //pushMatrix();
    //rotate(R2);
    shape(spaceship, xpos, ypos, spaceship.width*5, spaceship.height*5);
    //popMatrix();
    popMatrix();
    popMatrix();
    R += .01;
  }

}
