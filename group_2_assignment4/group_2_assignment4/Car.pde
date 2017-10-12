//This was inspired from "Objects" by Daniel Shiffman on Processing.org
//Source:https://processing.org/tutorials/objects/
class Car {
  color c;
  float xPos;
  float yPos;
  float xSpeed;
  float R;

  Car (int col, float xpos, float ypos, float xspeed) {
    c = col;
    xPos = xpos;
    yPos = ypos;
    xSpeed = xspeed;
  }
  void display() {
    if  (c == 255) {
      fill(c,0,0);
      stroke(0);
      rect(xPos,yPos,100,40);
      fill(255);
      ellipseMode(CENTER);
      ellipse(xPos+25,yPos+40,20,20);
      ellipse(xPos+75,yPos+40,20,20);
      stroke(0);
        translate(xPos+25,yPos+40);
        rotate(R);
        line(0,9,0,-9);
        line(-10,0,10,0);
      resetMatrix();
        translate(xPos+75,yPos+40);
        rotate(R);
        line(0,9,0,-9);    
        line(-10,0,10,0);
      resetMatrix();
      R = R + 0.03;
    }
    else if (c == 200) {
      fill(0,0,c);
      stroke(0);
      rect(xPos,yPos,100,40);
      fill(255);
      ellipseMode(CENTER);
      ellipse(xPos+25,yPos+40,20,20);
      ellipse(xPos+75,yPos+40,20,20);
        stroke(0);
        translate(xPos+25,yPos+40);
        rotate(-R);
        line(0,9,0,-9);
        line(-10,0,10,0);
      resetMatrix();
        translate(xPos+75,yPos+40);
        rotate(-R);
        line(0,9,0,-9);    
        line(-10,0,10,0);
      resetMatrix();
      R = R + 0.06;
    }
  }
  void drive() {
    xPos = xPos + xSpeed;
    if (xPos > width) {
      xPos = 0;
    }
    else if (xPos == 0) {
      xPos = 1650;
    }
  }
}