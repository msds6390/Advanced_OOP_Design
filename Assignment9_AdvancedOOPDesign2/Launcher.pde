// Source:
// https://www.youtube.com/watch?v=CK0zRCfh-t4
class Launcher extends GameObject {
  
  Launcher() {
    x = width/2;
    y = height/2;
    z = -10000;
    dx = 0;
    dy = 0;
    dz = 0;
  }
  
  void show() {
    pushMatrix();
    translate(x, y, z);
    fill(100);
    sphereDetail(5);
    sphere(5);
    popMatrix();
  }
  
  void act() {
    if (frameCount == 30 ) {
      engine.add(new Message("LEVEL 1", width/2, height/4, -1000, 40));
    }
    if (frameCount < 100) {
    
    } else if (frameCount < 600) {
      straightLine(100);
    } else if (frameCount < 1100) {
      straightLine(400);
    } else if (frameCount < 1500) {
      //doubleLine();
      randomWave();
    } else {
      randomWave();
    }
  }
  
  void straightLine(float incomingX) {
    x = incomingX;
    if (frameCount % 100 == 0) {
      engine.add(new Enemy(x, y, z));
    }
  }
  
  void doubleLine() {}
  
  void randomWave() {
    x = random(50, width - 50);
    y = random(50, height - 50);
    if (frameCount % 100 == 0) {
      engine.add(new FastEnemy(x, y, z));
    }
  }
  
  boolean hasDied() {
    return false;
  }
}
