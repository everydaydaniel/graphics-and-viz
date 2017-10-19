PImage earthImg;
PImage moonTexture;
PShape earth2;
float Rot = 0;

Moon myMoon;
Satellite mySatellite;
Spaceship mySpaceship;


void setup() {
  noStroke();
  size(1400, 1000, P3D);
  earth2 = createShape(SPHERE, 150);
  earthImg = loadImage("4096_earth.jpg");
  earth2.setTexture(earthImg);

  myMoon = new Moon();
  mySatellite = new Satellite();
  mySpaceship = new Spaceship();

  moonTexture = loadImage("moonTexture.jpg");
  myMoon.xPos = 500;
  myMoon.yPos = 0;
  myMoon.radius = 50;
  myMoon.moonImg = moonTexture;

  mySatellite.xPos = 500;
  mySatellite.yPos = 0;
  mySatellite.sXpos = 0;
  mySatellite.sYpos = 0;
  mySatellite.satellite = loadShape("Satellite.obj");

  mySpaceship.xpos = 300;
  mySpaceship.ypos = 300;
  mySpaceship.spaceship = loadShape("SS1.obj");




}
void draw() {
  background(0,0,0);
  pushMatrix();
  translate(700, 500, 0);
  rotateY(Rot);
  shape(earth2);
  popMatrix();
  myMoon.display();
  mySatellite.display();
  mySpaceship.display();
  Rot = Rot + 0.03;
}