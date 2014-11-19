 
ArrayList<Button> buttons;

void setup() {
  size(200, 200);
  buttons = new ArrayList<Button>();
  buttons.add(new Button(20, 50, 50, 50, "button1"));
  buttons.add(new Button(150, 120, 20, 20, "button2"));
  buttons.add(new Button(50, 120, 30, 30, "button3"));
  
  buttons.get(2).cover = color(0,255,0);
}

void draw() {
  background(50);
  for (Button b : buttons) {
    b.update();
    if (b.pressed) println(b.name + " pressed");
  }
}

