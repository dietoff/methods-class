//get controlp5 library from http://www.sojamo.de/libraries/controlP5/
// follow instructions inside zip to install

import controlP5.*;
ControlP5 p5;
Button b;
Toggle t;
Slider s;
void setup() {
  size(400, 400);
  createUI();
}

void createUI() {
  p5 = new ControlP5(this);
  b = p5.addButton("Button1");
  b.setPosition(50, 30);
  b.setValue(0);
  t = p5.addToggle("Toggle1").setPosition(160, 30);
  s = p5.addSlider("Hello").setPosition(50, 100);
}

void draw() {
}

public void Button1(int theValue) {
  println("button 1 pressed "+theValue);
}

public void Toggle1(int theValue) {
  println("toggle 1 pressed "+theValue);
}

public void Hello(int theValue) {
  println("sliderValue "+theValue);
}

