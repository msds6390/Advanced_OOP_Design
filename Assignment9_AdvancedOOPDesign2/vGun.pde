class vGun extends Gun {

  vGun() {
    threshold = 10;
    cooldown = 0;
  }

  // polymorphism - overrides the void shoot
  void shoot() {
    if (cooldown == threshold) {
      //Bullet(float incomingDX, float incomingDY, float incomingDZ)
      engine.add(new Bullet(2, 0, -100));
      engine.add(new Bullet(-2, 0, -100));
      cooldown = 0;  //to recharge
    }
  }
}
