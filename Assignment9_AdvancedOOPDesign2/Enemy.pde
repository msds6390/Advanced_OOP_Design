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
        //if (boxBox(x, y, z, thing.x, thing.y, thing.z)) {
        //  hp -= 1;
        //}
        if (recRect(x, y, z, 40, 40, thing.x, thing.y, thing.z, 5, 5)) {
          hp -= 1;
          thing.hp = 0;
          for (int j = 0; j < 5; j++) {
            engine.add(new Particle(thing.x, thing.y, thing.z));
          //engine.add(new Particle(thing.x, thing.y, thingz));
          }
        }
      }
      i++;
    }
    
    
  }
  
  boolean hasDied() {
    return dz > 100 || hp <= 0;
  }
  
}
