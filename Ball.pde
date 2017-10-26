class Ball {
  float x;
  float y;
  float radius;
  float xSpeed;
  float ySpeed;

  //total random motion
  Ball(float radius) {
    //placing ball dead center
    this.x = width/2;
    this.y = height/2;
    this.xSpeed = 5;
    this.ySpeed = 5;
    this.radius = radius;
  }

  public void ballMotion() {
    x+=xSpeed;
    y+=ySpeed;
    if (x > width || x < 0) {
      xSpeed *= -1;
    }
    if (y > height || y < 0) {
      ySpeed *= -1;
    }
  }
  public void displayBall() {
    stroke(0, 255, 0);
    fill(0, 255, 0);
    ellipse(x, y, radius*2, radius*2);
  }
}