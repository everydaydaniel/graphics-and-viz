// This drop class was inspired by Daniel Shiffmans tutorial on purple rain
// link to video https://www.youtube.com/watch?v=KkyIDI6rQJI

// issues:
// rain is generated out of screen resulting in rain falling after the cloud
class Drop {
  // takes in a cloud to get information
  Cloud cloud;
  float x,y,len,depth,yspeed;

  Drop(Cloud cloud){
    // get values from the cloud class it is being called from
    this.cloud = cloud;
    this.depth = random(0,10);
    this.x = random(cloud.cloudX, cloud.cloudX + cloud.cloud_width);
    this.y = random(-500,cloud.cloudY + (cloud.cloud_height/2));
    yspeed = 2;
    this.len = random(10,20);

  }

  void fall(){
    y += yspeed;
    x += cloud.direction;
    yspeed += .3;
    stroke(138,43,226);
    if (y < cloud.cloudY + (cloud.cloud_height/2)){
      noStroke();

    }

    // bring back to the top of the screen
    if (y > height){
      // re-initialize the object attributes once its out of the screen.
      this.x = random(cloud.cloudX, cloud.cloudX + cloud.cloud_width);
      this.y = random(cloud.cloudY,cloud.cloudY + (cloud.cloud_height/2));
      yspeed = 5;
      noStroke();

    }

  }

  void show(){
    line(x,y,x,y + len);
  }

}