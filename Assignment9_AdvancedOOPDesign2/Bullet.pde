// Source:
// https://www.youtube.com/watch?v=VBDDsRFzR1E
class Bullet extends GameObject {
  
  // default constructor
  Bullet() {
    x = myShip.x;
    y = myShip.y;
    z = myShip.z;
    dx = 0;
    dy = 0;
    dz = -10;
    hp = 1;
  }
  
  // overloaded contructor
  Bullet(float incomingDX, float incomingDY, float incomingDZ) {
    x = myShip.x;
    y = myShip.y;
    z = myShip.z;
    dx = incomingDX;
    dy = incomingDY;
    dz = incomingDZ;
    dz = -10;
    hp = 1;
  }

  void show() {
    pushMatrix();
    translate(x, y, z);
    //fill(250, 240, 142);
    fill(electricgreen);
    box(10);
    popMatrix();
  }

  void act() {
    x = x + dx;
    y = y + dy;
    z = z + dz;
  }

  boolean hasDied() {
    return z < -10000 || hp <= 0;
  }
}
