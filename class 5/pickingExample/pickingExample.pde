PImage img;

void setup() {
  size (500,300);
  img = createGraphics(width, height, P2D);
  noStroke();
}

void draw() {
  background(0);
  img.background(0);
  fill(120);
  rect(50,50,50,50);
  
}
