int [] temp = {
  45, 0, 23, 30, 78, 10
};

color blue = color(0, 0, 255);
color red = color(255, 0, 0);

int leftMargin = 10;

void setup() {
  size(500, 500);
}

void draw() {
  background(20, 20, 60);
  for (int i = 0; i < temp.length; i++) {
    float amt = map(temp[i], 0, 80, 0, 1);
    color mix = lerpColor(blue, red, amt);
    fill(mix);
    rect(i * 50 + leftMargin, 10, 49, 49);
  }
}

