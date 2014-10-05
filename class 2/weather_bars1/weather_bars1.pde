float barw = 15;
int margin = 25;

void setup() {
  size(500, 150);
  noStroke();
  fill(0);
}

void draw() {
  background(255,200,50);
  for (int i=0; i < temp.length; i++) { //or i=i+1
    rect(i*barw+margin, height-margin, barw-1, -temp[i]);
  };
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
