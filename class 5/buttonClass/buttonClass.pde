Button b1;
Button b2; 

void setup() {
  size(200, 200);
  b1 = new Button(20, 50, 50, 50);
  b2 = new Button(150, 120, 20, 20);
}

void draw() {
  background(50);
  b1.update();
  b2.update();
  if (b1.pressed) println("button1 pressed");
  if (b2.pressed) println("button2 pressed");
}

