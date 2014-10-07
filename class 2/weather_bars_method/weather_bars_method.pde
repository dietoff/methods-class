float barw = 15;
int margin = 25;

void setup() {
  size(500, 150);
  noStroke();
  fill(0);
}

void draw() {
  background(255, 200, 50);
  float[] m = barMargins(temp);
  drawBars(m, temp);
}

void drawBars(float[] m, int[] data) {
  float wf = m[0];
  float hf = m[1];
  translate(margin, height-margin);
  for (int i=0; i < data.length; i++) { //or i=i+1
    rect(i*wf, 0, wf-1, -data[i]*hf);
  };
}

float[] barMargins( int[] inputarray) {
  float[] margins = new float[2];
  margins[0] = (width - 2*margin) /inputarray.length;
  margins[1] = 0;
  for (int i = 0; i < inputarray.length; i ++ ) {
    if (inputarray[i] > margins[1]) {
      margins[1] = inputarray[i];
    }
  }
  margins[1] = (height - 2*margin)/ margins[1];
  return margins;
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

