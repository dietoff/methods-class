
float barw = 15;
int margin = 25;
float maxR = 180;

void setup() {
  size(500, 500);
  textAlign(CENTER);
}

void draw() {
  background(200);
  translate(width/2, height/2);
  scale(1.5);
  strokeWeight(1);
  stroke(150);
  for (int j=0; j < maxR; j=j+20) {
    noFill();
    ellipse(0, 0, j, j);
    fill(40);
  }

  noFill();
  stroke(0,180);
  strokeWeight(5);
  for (int i=0; i < temp.length; i++) {
    float angle = 2 * PI / float(temp.length);
    rotate(angle);
    line(0, 0, 0, temp[i]);
    text(temp[i],0,maxR/2.0);
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

