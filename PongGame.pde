Paddle paddle1;
Paddle paddle2;
Ball ball;

public void setup() {
  size(1000, 700);
  paddle1 = new Paddle(30, 170);
  paddle2 = new Paddle(30, 170);
  ball = new Ball(10);
}

public void draw() {
  background(0);
  paddle1.displayPaddle();
  paddle1.verticleMotion();
  paddle2.x = 920;
  paddle2.displayPaddle();
  paddle2.autonomousMotion();
  ball.displayBall();
  ball.ballMotion();
  paddle1.paddleHittingBall(ball);
}