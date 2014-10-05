int w = 500;
int h = 150;
float barw = 15;
int margin = 25;
String label = "Temperature (F)";

void setup() {
  size(w, h);
  
}

void draw() {
  background(255);
  noStroke();
  fill(80);
  for (int i=0; i < temp.length; i++) { //or i=i+1
    rect(i*barw+margin, h-margin, barw-1, -temp[i]);
  };
  stroke(0);
  
  // axes
  line(margin, h-margin, barw*(temp.length+1)+margin, h-margin);
  line(margin, h-margin, margin, h-margin-100);
  text(label,margin, h-margin-100);
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

