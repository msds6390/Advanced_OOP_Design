abstract class Gun {
  
  // threshold how long it takes before you can shoot again (rate of fire)
  // cooldown is how much you recharge so far
  float cooldown, threshold;  
  
  // default constructor
  Gun () {
  }
  
  // controls rate of fire
  void shoot() {
    if (cooldown == threshold) {
      engine.add(new Bullet());
      cooldown = 0;
    }
  }
  
  void recharge() {
    if (cooldown < threshold) {
      cooldown++;
    }
  
  }
  
}
