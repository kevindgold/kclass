class Ball {
  float posX = 200;
  float posY = 200;
  float speedX = 0.1;
  float speedY = 0.1;

  Ball(float x, float y) //constructor
  {
    posX = x;
    posY = y;
    speedX = random(-1.0, 1.0);
    speedY = random(-1.0, 1.0);
  }
}


