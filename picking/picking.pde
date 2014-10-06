PGraphics b;
color bc = color(255, 0, 0);
color id = color(15);

void setup() {
  size (500, 500);
  b = createGraphics(500, 500);
}

void draw() {
  
  drawButtons(b);
  testMouse();
  drawButtons(this.g);

}

void drawButtons(PGraphics p) {
  color draw;
  if (p==b) {
    draw = id;
  } else {
    draw = bc;
  }
  
  p.beginDraw();
  p.background(0);
  p.fill(draw);
  p.rect(200, 300, 50, 50);
  p.endDraw();
}

void testMouse() {
  color c = b.get(mouseX,mouseY);

  if(c == id) {
  bc = color(255,255,0);}
  else {
  bc = color(255,0,0);}
}

