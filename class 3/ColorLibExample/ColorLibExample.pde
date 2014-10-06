import colorLib.*;

Palette p;
// get library from https://github.com/vormplus/colorLib
// see http://vormplus.be/blog/article/an-introduction-to-colorlib
// and http://vormplus.be/blog/article/creating-gradients-with-colorlib

void setup() {
  size(500, 300);

  PImage img = loadImage("palette.png");
  p= new Palette(this, img);
  p.sortByLuminance();
  p.drawSwatches();
}

void draw() {
  Gradient g = new Gradient(p, width);

  for (int i = 0; i < g.totalSwatches (); i++) {
    stroke( g.getColor(i) );
    line(i, 25, i, height);
  }
}
