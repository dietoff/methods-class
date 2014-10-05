
int i = 0;

void setup() {
  size(800,400);  // make as vars
}

void draw() {
  background(255);
  i=i+1; // or i++;
  translate(0,i);
  //rotate(i/20.0);
  stroke(i,255-i,50);
  line(0,0,800,0);
  
 //if (i > 400) {i = 0;} // modulo operator
}
