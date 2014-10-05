int w = 500;
int h = 150;
float barw = 15;
int marginX = 35;
int marginY = 25;

String label = "Temperature (F)";

void setup() {
  size(w, h);
}

void draw() {
  background(255);
  axis(100,20);
  
  noStroke();
  fill(80);
  for (int i=0; i < temp.length; i++) { //or i=i+1
    rect(i*barw+marginX, h-marginY, barw-1, -temp[i]);
  };
  stroke(0);
}

void axis(int ylim, int steps) {
  float tw = totalWidth();
  int yl = ylim;
  int st = steps;
  
  // x axis
  line(marginX, h-marginY, tw+marginX, h-marginY); 
  // y axis
  line(marginX, h-marginY, marginX, h-marginY-yl); 
  text(label,marginX, h-marginY-yl-5);
  
  // ticks
  for (int i=0; i<= yl; i=i+st) {
    line(marginX,h-marginY-i,marginX-2,h-marginY-i);
    text(i,5,h-marginY-i+5);
  }
  
  stroke(220);
  for (int i=0; i<= yl; i=i+st) {
    line(marginX,h-marginY-i,tw+marginX,h-marginY-i);
  }
}

float totalWidth() {
  return barw*temp.length;
}

int[] temp = {
  67, 
  72, 
  74, 
  62, 
  56, 
  66, 
  65, 
  59, 
  61, 
  69, 
  74, 
  69, 
  66, 
  68, 
  58, 
  64, 
  66, 
  57, 
  68, 
  62, 
  59, 
  73, 
  61, 
  61, 
  57, 
  58
};

