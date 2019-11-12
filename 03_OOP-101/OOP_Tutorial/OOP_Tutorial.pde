Ball[] balls;

/**
 *  The setup method - Runs once before calling draw 
 */
void setup() {
  // Create the canvas
  size(640, 480);

  // Create the ball
  balls = new Ball[100];
  for (int i = 0; i < 100; i++) {
    balls[i] = new Ball(new PVector(width / 2, height / 2), new PVector(random(-5, 5), random(-5, 5)), 16);
  }
}

/**
 *  Called every frame - Loops forever until window is closed
 */
void draw() {
  // Draws the background - If not included we would see the ball in every frame since start
  background(0);
  // Updates the ball's position
  for (int i = 0; i < 100; i++) {
    balls[i].update();
    balls[i].show();
  }
}
