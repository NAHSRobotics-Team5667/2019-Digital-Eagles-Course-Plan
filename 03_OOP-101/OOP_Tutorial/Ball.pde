/**
 *  Ball Class
 */
public class Ball {

  PVector pos, v; // The ball position and velocity vector
  int r; // The ball radius
  /**
   *  Ball Constructor
   *  @pos - The position vector of the ball
   *  @v - The velocity vector of the ball
   *  @r - The ball's radius
   */
  public Ball(PVector pos, PVector v, int r) {
    this.pos = pos;
    this.v = v;
    this.r = r;
  }

  /**
   *  The update method - Updates the ball according to speed and keeps it inside
   *  the bounding box
   */
  public void update() {
    this.pos.add(this.v);
    if (this.pos.x + this.r >= width) {
      this.pos.x = width - this.r;
      this.v.x *= -1;
    } else if (this.pos.x - this.r <= 0) {
      this.pos.x = this.r;
      this.v.x *= -1;
    }

    if (this.pos.y + this.r >= height) {
      this.pos.y = height - this.r;
      this.v.y *= -1;
    } else if (this.pos.y - this.r <= 0) {
      this.pos.y = this.r;
      this.v.y *= -1;
    }
  }

  /**
   *  Draws the ball on the canvas
   */
  public void show() {
    noFill();
    stroke(255);
    ellipse(this.pos.x, this.pos.y, this.r, this.r);
  }
}
