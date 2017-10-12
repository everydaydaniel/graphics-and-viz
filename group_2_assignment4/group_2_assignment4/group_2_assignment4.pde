Car myCar;
Car myCar2;

Sun mySun;

Cloud cloud1;
Cloud cloud2;
Cloud cloud3;


void setup () {
  myCar = new Car(255, 0, 867, 1);
  myCar2 = new Car(200, 1650, 807, -2);
  mySun = new Sun(10, 600);
  cloud1 = new Cloud();
  cloud2 = new Cloud();
  cloud3 = new Cloud();
  size(1700,975);
  background(52,206,245);
}

void draw () {
  background(52,206,245);

  mySun.display();
  cloud1.move();
  cloud1.display();
  cloud2.move();
  cloud2.display();
  cloud3.move();
  cloud3.display();
  fill(0,208,69);
  rect(0,650,1700,650);
  fill(162,162,162);
  quad(400,400,350,450,450,450,500,400);
  fill(162,162,162);
  line(425,425,425,275);
  rect(350,450,100,325);
  fill(162,162,162);
  quad(450,450,450,775,500,725,500,400);
  fill(0,0,0);
  rect(0,800,1700,125);
  stroke(255,255,0);
  line(0, 860, 150, 860);
  line(350, 860, 500, 860);
  line(700, 860, 850, 860);
  line(1050, 860, 1200, 860);
  line(1400, 860, 1550, 860);
  stroke(0,0,0);
  fill(162,162,162);
  ellipse(650, 725, 200, 100);
  noStroke();
  rect(550,650,200,75);
  stroke(0,0,0);
  ellipse(650, 650, 200, 100);
  line(550, 650, 550, 725);
  line(750, 650, 750, 725);
  fill(162,162,162);
  quad(900,300,850,350,950,350,1000,300);
  fill(162,162,162);
  rect(850,350,100,425);
  fill(162,162,162);
  quad(950,350,950,775,1000,725,1000,300);
  triangle(925,250,950,350,850,350);
  triangle(925,250,1000,300,950,350);
  myCar.drive();
  myCar.display();
  myCar2.drive();
  myCar2.display();
}