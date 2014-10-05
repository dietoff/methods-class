import processing.pdf.*;

int barw = 15;
int margin = 25;

void setup() {
  size(500, 150);
}

void draw() {
  //beginRecord(PDF, "~/Desktop/graph.pdf");
  background(255, 200, 50);
  
  noFill();
  for (int i=0; i < temp.length; i++) { //or i=i+1
    int y = margin+temp[i];
    int x = margin+barw*i;
    ellipse(x,y,10,10);
  };

  //endRecord();
  //exit();
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

