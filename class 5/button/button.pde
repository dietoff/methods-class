int x = 100;
int y = 100;
int h = 50;
int w = 50;

void setup() {
  size(200, 200);
}

void draw() {
  background(0);
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255, 0, 0);
    if (mousePressed) {
      fill(255, 255, 0);
    }
  } else {
    fill(100);
  }
  rect(x, y, w, h);
}

