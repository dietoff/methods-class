

void setup() {
  size(300,300);
  noFill();
}
void draw() {
 background(140);
 int centerX = 150;
 int centerY = 150;
 int diameter = 100;
 ellipse(centerX,centerY,diameter,diameter);
 
 float x = centerX + diameter/2*sin(frameCount/20.0);
 float y = centerY + diameter/2*cos(frameCount/20.0);
 
 line(x,0,x,y);
 line(0,y,x,y);
 ellipse(x,y,10,10);
}
