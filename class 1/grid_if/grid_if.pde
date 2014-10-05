
void setup() {
  size (300, 200);
}

void draw() {
  stroke(0);
  for (int i = 0; i <= width; i = i + 10) {
    line(i, 0, i, height);
  }

  for (int i = 0; i <= height; i = i + 10) {

    if (mouseY> i) {
      stroke(255);
    } else {
      stroke(0);
    }
    line(0, i, width, i);
  }
}

