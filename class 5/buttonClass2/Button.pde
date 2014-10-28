class Button {
  int x, y, h, w;
  Boolean pressed = false;
  Boolean over = false;
  color cpressed = color(150, 0, 0);
  color cover = color(150, 150, 0);
  color cidle = color(130, 130, 130);
  String name;

// this is a "constructor" - it is run when the class is created
  Button(int x1, int y1, int h1, int w1, String name1) {
    x = x1;
    y = y1;
    h = h1;
    w = w1;
    name = name1;
  }

// this is another constructor - it allows to create an object with only two parameters
  Button(int x1, int y1) {
    x = x1;
    y = y1;
    h = 30;
    w = 30;
    name = this.toString();
  }
  
  
  // in this method, only things that are concerned with drawing should be included
  void drawButton() {
    noStroke();
    fill(cidle);
    if (pressed) {
      fill(cpressed);
    } 
    if (over) {
      fill(cover);
    }
    rect(x, y, h, w);
  }

// this method determines the state of buttons
  void update() {
    if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
      if (mousePressed) {
        pressed = true;
        over = false;
      } else {
        pressed = false;
        over = true;
      }
    } else {
      pressed = false;
      over = false;
    }
    drawButton();
  }
}

