

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
 
 // this is just an example of how we calculate with variables
 // frameCount gives us the current frame, sin() calculates the sinus
 // of the value, interpreting framecount as an angle
 // to make the change in the sinus value from frame to frame smaller,
 // (i.e. the rotation slower) we divide frameCount first by an arbitrary float value
 // our x and y center of the small circle starts from the circle's center, 
 // then multiplies the sin and cos values (between 0 and 1) with the radius of the ellipsis
 float x = centerX + diameter/2*sin(frameCount/20.0);
 float y = centerY + diameter/2*cos(frameCount/20.0);
 
 line(x,0,x,y);
 line(0,y,x,y);
 ellipse(x,y,10,10);
}
