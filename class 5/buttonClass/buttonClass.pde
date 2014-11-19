Button b1;
Button b2; 
Button b3;

void setup() {
  size(200, 200);
  b1 = new Button(20, 50);
  b2 = new Button(150, 120, 20, 20);
  b3 = new Button(0,0);
}

void draw() {
  background(0);
  b1.update();
  b2.update();
  b3.update();
  if (b1.pressed) println("button1 pressed");
  if (b2.pressed) println("button2 pressed");
  if (b3.pressed) {
    background(255);
  }
}

