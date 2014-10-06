import colorLib.*;

Palette p1;
Palette p2;
Palette p3;
Palette p4;
Palette p5;
Palette p6;
Palette p7;
Palette p8;
Palette p9;
Palette p10;

// get library from https://github.com/vormplus/colorLib
// see http://vormplus.be/blog/article/an-introduction-to-colorlib
// and http://vormplus.be/blog/article/creating-gradients-with-colorlib

void setup() {
  size(200, 550);
  background(150);
  
  p1 = new Palette(this);
  p1.makeShaded( color(0, 106, 255));
  translate(20,20);
  p1.drawSwatches();

  p2 = new Palette(this);
  p2.makeComplement(color(0, 106, 255));
  translate(0, 50);
  p2.drawSwatches();
  
  p3 = new Palette(this);
  p3.makeComplementary(color(0, 106, 255));
  translate(0, 50);
  p3.drawSwatches();
  
  p4 = new Palette(this);
  p4.makeTetrad(color(0, 106, 255));
  translate(0, 50);
  p4.drawSwatches();
  
  p5 = new Palette(this);
  p5.makeTinted(color(0, 106, 255));
  translate(0, 50);
  p5.drawSwatches();
  
  p6 = new Palette(this);
  p6.makeToned(color(0, 106, 255));
  translate(0, 50);
  p6.drawSwatches();
  
  p7 = new Palette(this);
  p7.makeTriad(color(0, 106, 255));
  translate(0, 50);
  p7.drawSwatches();

  p8 = new Palette(this);
  p8.makeTriad(color(0, 106, 255),25);
  translate(0, 50);
  p8.drawSwatches();
  
  p9 = new Palette(this);
  p9.makeTriad(color(0, 106, 255),160);
  translate(0, 50);
  p9.drawSwatches();
  
  p10 = new Palette(this);
  p10.addColor(color(0, 106, 255));
  p10.addColor(color(255, 106, 0));
  p10.rotateRGB(100);
  translate(0, 50);
  p10.drawSwatches();
}
