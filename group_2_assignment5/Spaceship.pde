class Spaceship extends Moon{
  float xpos, ypos, rotaion, R2;
  PShape spaceship;

  Spaceship(){

  }

  void display() {
    pushMatrix();
    translate(700, 500, 0);
    shape(spaceship, xpos+100, ypos, spaceship.width*25, spaceship.height*25);
    popMatrix();
  }



}
