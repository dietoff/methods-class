void setup() {
  size(500, 500);
  noStroke();
}

void draw() {
  height;
  width;
  if (mousePressed==true) {
    fill(mouseX, 120, mouseY, 100);
  } else {
    fill(255, mouseX, 0, 100);
  }
  ellipse(mouseX, mouseY, 80, 80);
}

