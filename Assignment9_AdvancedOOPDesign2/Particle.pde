// Source:
// https://www.youtube.com/watch?v=PpfVEEsR8_M
class Particle extends GameObject {

  Particle(float incomingX, float incomingY, float incomingZ) {
    x = incomingX;
    y = incomingY;
    z = incomingZ;
    dz = random(-5, 5);
    dy = random(-5, 5);
    dz = random (-5, 5);
    hp = random(100, 255);
  }
  
  void show() {
    pushMatrix();
    translate(x, y, z);
    fill(orange, hp);
    box(3);
    popMatrix();
  }
  
  void act() {
    x = x + dx;
    y = y + dy;
    z = z + dz;
    
    hp = hp - 2;
  }
  
  boolean hasDied() {
    return hp <= 0;
  }
}
