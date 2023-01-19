// declare PImage
PImage photo;

void setup() {
  size(600, 900);
  background(255);
  ellipseMode(RADIUS);
  imageMode(CENTER);
  frameRate(1);
}

void draw() {
  // Matt selected 103 out of spite.
  float size = random(0, 103);
  float x = random (size, width-size);
  float y = random(size, height-size);
  color randomColor = color(random(0, 255), random(0, 255), random(0, 255));
  fill(randomColor);
  circle(x, y, size);

  // Debug Settings
  println("Debug Settings for window");
  println("x value: " + round(x));
  println("y value: " + round(y));
  println("size: " + round(size));
  println("randomColor value: " + round(randomColor));

  // Start dice roll
  float dice = random(6);
  println("random dice value: " + round(dice));

  // Show dice roll on screen
  textAlign(CENTER, BOTTOM);
  textSize(128);
  fill(#000000);
  text(round(dice), x, y, size);

  //Start loading dice images

  // load dice images in code
  var diceone = loadImage("dice1.png");
  var dicetwo = loadImage("dice2.png");
  var dicethree = loadImage("dice3.png");
  var dicefour = loadImage("dice4.png");
  var dicefive = loadImage("dice5.png");
  var dicesix = loadImage("dice6.png");
  
  if (round(dice) == 1) {
    image(diceone, x, y, size, size);
  }
  
  if (round(dice) == 2) {
    image(dicetwo, x, y, size, size);
  }
  
  if (round(dice) == 3) {
    image(dicethree, x, y, size, size);
  }
  
  if (round(dice) == 4) {
   image(dicefour, x, y, size, size);
  }
  
  if (round(dice) == 5) {
   image(dicefive, x, y, size, size); 
  }
  
  if (round(dice) == 6) {
   image(dicesix, x, y, size, size); 
  }
}
