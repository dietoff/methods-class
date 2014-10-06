float[][] grid;
int dimy;
int dimx;
int frame=0;

void setup() {
  size(600, 400, P3D);
  colorMode(HSB, 10);
  hint(DISABLE_DEPTH_TEST);
  frameRate(30);
  smooth(8);
  
  // load grid
  Table file = loadTable("bermuda.csv");

  // build array of exact same size
  dimy = file.getRowCount();
  dimx = file.getColumnCount();

  grid = new float[dimx][dimy];

  // parse table into array
  for (int i = 0; i < dimy; i++) {
    TableRow r = file.getRow(i);
    for (int j = 0; j < dimx; j++) {
      grid[j][i] = r.getFloat(j)/1000f;
    }
  }
}

void draw() {
  frame++;
  background(0, 0, 2);
  translate(width/2, height/2);

  //some viewport adjustments
  scale(10); 
  rotateX(1.2); // tilt the camera around the x axis
  rotateZ(frame/200f); // animated rotation around the vertical screen axis
  translate(-dimx/2f, -dimy/2f); // make sure grid will be in the center

  // draw the water surface
  blendMode(BLEND); // turn on alpha blending for surface
  stroke(0, 0, 10);
  strokeWeight(0.1);
  fill(0, 0, 10, 1);
  rect(0, 0, dimx, dimy);


  // draw the ocean floor
  blendMode(ADD); // turn on additive blending for the floor
  noStroke();
  for (int i=0; i< dimy; i++) {
    for (int j=0; j<dimx; j++) {
      float z =grid[j][i];
      translate(j, i, z);
      fill(6, 4, 10+z*3);
      rect(0, 0, 1, 1);
      translate(-j, -i, -z);
    }
  }
}

