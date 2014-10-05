
float barw = 15;
int margin = 25;

void setup() {
  size(500, 500);
}

void draw() {
  background(200);


  translate(width/2, height/2);
  scale(1.5);

  stroke(150);
  for (int j=0; j < 180; j=j+20) {
    noFill();
    ellipse(0, 0, j, j);
    fill(40);
  }

  noFill();
  stroke(0);
  for (int i=0; i < temp.length; i++) {
    float angle = 2 * PI / float(temp.length);
    rotate(angle);
    line(0, 0, 0, temp[i]);
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

