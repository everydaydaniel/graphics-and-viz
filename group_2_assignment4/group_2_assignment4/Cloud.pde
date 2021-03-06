// Objective: make a cloud that moves from side to side
// add rain functionality and have clouds spawn with differnt
// shapes. A rectangle is the base shape of a cloud.


class Cloud {
  // initialize variables
  float cloud_width;
  float cloud_height;
  float cloudX, cloudY;
  float direction;
  int weight_mult = 1;
  float weight = 255;
  Drop[] rain = new Drop[200];
  boolean isRaining = false;
  boolean isincreasing = false;

  // cloud weight is the color of the cloud over time
  // the ranges will be [93,255]. The color wil decrease
  // implying its about to rain. Once it reaches 93 the cloud
  // will rain and increase its color to go back to a non raining
  // state
  // constructor
  Cloud(){
    this.cloud_width = random(200, width/3);
    this.cloud_height = random(50, height/5);
    this.cloudX = random(width);
    this.cloudY = random(height/4);
    this.direction = random(-3,3);
    // direction can't be == 0;
    if (this.direction == 0){
      while(this.direction == 0){
        this.direction = random(-3,3);
      }
    }
  }



  void move(){
   // need to have the cloud come back into the screen
   // the clouds settings get re initialized to make it seem like new clouds are being
   // created but its the same object.
   this.cloudX += direction;
   // if direction is negative
   if (this.direction < 0){
    if(this.cloudX + this.cloud_width < -80){
      this.cloud_width = random(150, width/3);
      this.cloud_height = random(50, height/5);
      this.cloudX = random(width);
      this.cloudY = random(height/4);
      this.cloudX = width + 100;
      this.direction = random(.75,3) * -1;
    }
   }
   if (this.direction > 0){
    if((this.cloudX + this.cloud_width) > (width + this.cloud_width + 80)){
      this.cloud_width = random(150, width/3);
      this.cloud_height = random(50, height/5);
      this.cloudX = random(width);
      this.cloudY = random(height/4);
      this.cloudX = (this.cloud_width + 80) * -1;
      this.direction = random(.75,3);
    }
  }
}

  void display(){
    if (isRaining){
      raining();
    }
    updateWeight();
    noStroke();
    fill(weight);
    ellipse(cloudX + (cloud_width/2), cloudY + (cloud_height/2), cloud_width + 200, cloud_height + 100);
    rect(cloudX, cloudY, cloud_width, cloud_height);



  }

void createRain(){
  // populate the rain with drop objects
  for (int i = 0; i < rain.length; i++){
      rain[i] = new Drop(this);
  }
}


void raining(){
  // make it rain!!!! B)
  for (int i = 0; i < rain.length; i++){
    rain[i].fall();
    rain[i].show();

  }
}

  void updateWeight(){
    // 255 is max and 93 is min, osscilate between the two
    // 255 = white 93 = gray
    // going to white
    if (isincreasing == true){
      weight += .6;
      if (weight >= 255){
        isincreasing = false;
      }
      if (weight >= 200){
        isRaining = false;
      }
    }
    // going to gray
    if (isincreasing == false){
      weight -= .9;
      if (weight <=93){
        isincreasing = true;
      }
      if (weight <= 120){
        createRain();
        isRaining = true;
      }

    }
  }


}