float data[] = {25,12,7,45,30,4,43};

void setup(){
 size(400,400); 
}

void draw(){
 background(80);
 noStroke();
 fill(255,80,80,180);
 
/*
 ellipse(50,200,data[0],data[0]); // this is tedious, and we do not represent the data correctly!
 ellipse(100,200,data[1],data[1]);
 ellipse(150,200,data[2],data[2]); 
 ellipse(200,200,data[3],data[3]); 
 ellipse(250,200,data[4],data[4]); */
 

 for (int i = 0; i < data.length ; i++) { // for loop - index variable with start value, run as long as, after each run do this
 

  float diameter = sqrt(data[i]/2)/PI;
  
  ellipse(50 + 50*i,200,diameter,diameter); // magic number!
 }
}



