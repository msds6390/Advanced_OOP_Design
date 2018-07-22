/*
 MSDS 6390 Assignment 8: Midterm
 Arcade Game- Space Shooter
 Team: Jostein Barry-Straume, Brian Yu
 Date: 07/13/18
 Sources:
 https://www.youtube.com/watch?v=MJh3blPxcQw
 */

color lightblue = #67D4FF;
color darkblue = #2F6A96;
color orange = #EE7036;
color spacecadet = #05CBFA; // https://rgbcolorcode.com/color/space-cadet
color electricgreen = #00E600;
color outerspace = #414A4C;
//color outerSpaceBlack = #000000;
//color deepspacesparkle = #4A646C;
color deepSpaceSparkleWhite = #ffffff;
//color darkOrange = #AA5012;

Ship myShip;
StarSystem ss;
Star star;
Star[] stars;

int numStars = 400;
int timer = 0;
float shipSpeed = 5;
ArrayList<GameObject> engine;    // ArrayList that stores many different types of objects - bullets, spaceships, particle effects, etc.
                                 // data structure that holds things needed to be processed
boolean upKey, leftKey, downKey, rightKey, spaceKey, forwardKey, backwardKey;


import processing.opengl.*;

void setup() {
  textAlign(CENTER);
  size(600, 600, P3D);
  smooth();
  stroke(0);
  strokeWeight(1);
  ss = new StarSystem();
  ss.addStar();
  engine = new ArrayList<GameObject>(10000); // instantiate the list - Arbitrary number of objects to create
  rectMode(CENTER);
  myShip = new Ship();  // instantiate the space ship
  engine.add(myShip);
  engine.add(new Launcher());
}

void draw() {
  lights();
  //background(outerSpaceBlack); // Really hard to see ship damage particles with black background
  background(outerspace);
  pushMatrix();
  translate(0.5*width, 0.5*height);
  ss.run();
  popMatrix();

  // every game will animate all the game objects and how to make decisions
  int i = engine.size() - 1;  // traversing from last index to first
  while (i >= 0) {
    GameObject obj = engine.get(i);
    obj.show();
    obj.act();
    if (obj.hasDied()) {
      engine.remove(i);
    }
    i--;
  }
}

// keyboard direction
void keyPressed() {
  // lefty or righty control
  if (key == 'w' || key == 'W' || key == '5') upKey = true;
  if (key == 'a' || key == 'A' || key == '1') leftKey = true;
  if (key == 's' || key == 'S' || key == '2') downKey = true;
  if (key == 'd' || key == 'D' || key == '3') rightKey = true;
  if (key == 'e' || key == 'E' || key == '6') forwardKey = true;
  if (key == 'q' || key == 'Q' || key == '4') backwardKey = true;
  if (key == ' ') spaceKey = true;
}

void keyReleased() {
  // lefty or righty control
  if (key == 'w' || key == 'W' || key == '5') upKey = false;
  if (key == 'a' || key == 'A' || key == '1') leftKey = false;
  if (key == 's' || key == 'S' || key == '2') downKey = false;
  if (key == 'd' || key == 'D' || key == '3') rightKey = false;
  if (key == 'e' || key == 'E' || key == '6') forwardKey = false;
  if (key == 'q' || key == 'Q' || key == '4') backwardKey = false;  
  if (key == ' ') spaceKey = false;
}
