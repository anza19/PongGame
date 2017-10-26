class Paddle {

  float x;
  float y;
  float paddleWidth;
  float paddleHeight;

  Paddle(float paddleWidth, float paddleHeight) {
    this.x = 20;
    this.y = height/2;
    this.paddleWidth = paddleWidth;
    this.paddleHeight = paddleHeight;
  }

  public void displayPaddle() {
    stroke(0);
    fill(255);
    rect(this.x, this.y, this.paddleWidth, this.paddleHeight);
  }

  public void verticleMotion() {
    if (keyCode == UP) {
      this.y --;
    } else if (keyCode == DOWN) {
      this.y++;
    } else if (keyCode == ENTER) {
      this.y = y;
    }
  }

  public void paddleHittingBall(Ball b) {
    //what am I doing here??
    //well I am hoping the intersection logic from 
    //raingame works here
    float distance = dist(paddleWidth+x, y, b.x, b.y);
    float distance1 = dist(paddleWidth+x, paddleHeight+y, b.x, b.y);
    if (distance < (paddleWidth+b.radius+x)) {
      System.out.println("DIST: " + distance);
      b.xSpeed *= -1;
    } else if (distance1 < (paddleWidth+b.radius+x)) {
      b.xSpeed*=-1;
    }
  }
}