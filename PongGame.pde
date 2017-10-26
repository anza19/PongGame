Paddle paddle1;
Ball ball;

public void setup() {
  size(500, 500);
  paddle1 = new Paddle(30, 170);
  ball = new Ball(10);
}

public void draw() {
  background(0);
  paddle1.displayPaddle();
  paddle1.verticleMotion();
  ball.displayBall();
  ball.ballMotion();
  paddle1.paddleHittingBall(ball);
}