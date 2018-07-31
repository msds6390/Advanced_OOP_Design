// Source:
// https://www.youtube.com/watch?v=CK0zRCfh-t4
class Enemy extends GameObject {

  Enemy(float incomingX, float incomingY, float incomingZ) {
    x = incomingX;
    y = incomingY;
    z = incomingZ;
    dx = 0;
    dy = 0;
    dz = +10;
    hp = 5;
  }
  
  void show() {
    pushMatrix();
    translate(x, y, z);
    fill(orange);
    box(40);
    popMatrix();
  }
  
  void act() {
    x = x + dx;
    y = y + dy;
    z = z + dz;
    
    // Forgive me for this for-loop
    int i = 0;
    while (i < engine.size()) {
      GameObject thing = engine.get(i);
      if (thing instanceof Bullet) {
        if (recRect(x, y, z, 40, 40, thing.x, thing.y, thing.z, 5, 5)) {
          hp -= 1;
          thing.hp = 0;
          for (int j = 0; j < 5; j++) {
            engine.add(new Particle(thing.x, thing.y, thing.z));
          }
        }
      }
      // Make damage particles for ship
      if (thing instanceof Ship) {
        if (recRect(x, y, z, 40, 40, thing.x, thing.y, thing.z, 20, 20)) {
          hp -= 1;
          thing.hp -= 1;
          for (int j = 0; j < 5; j++) {
            engine.add(new Particle(thing.x, thing.y, thing.z));
          }          
        }
      } 
      i++;
    }
    
    
  }
  
  boolean hasDied() {
    if (dz > 100 || hp <= 0) {
      score += 10;
      engine.add(new Message("+10", x, y, z, 10));
      //int k = 0;
      //while (k < engine.size()) {
      //  GameObject thing = engine.get(k);
      //  if (thing instanceof Score) {
      //    engine.remove(k);
      //  }
      //}
      //engine.add(new Score(str(score), 20, 20, 0, 40));
      return true;
    } else {
      return false;
    }
    //return dz > 100 || hp <= 0;
  }
  
}
