float barw = 15;
int margin = 25;

void setup() {
  size(500, 200);
  noStroke();
  colorMode(HSB);
}

void draw() {
  background(0,0,50);

  translate(margin,height-margin);
  
  for (int i=0; i < temp.length; i++) { //or i=i+1
    fill(i*255/temp.length,200,200);
    translate(barw,0);
    rect(0, 0, barw-1, -temp[i]);
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
