// this is our value for the width of each bargraph element. 
// it can have any floating point value
float barw = 15; 

// this is the margin from the border 
// (we do not want our bargraph to start right at the edge of the screen)
int margin = 25;

// you know all of this, i hope
void setup() {
  size(500, 150);
  noStroke(); // do not draw a line around shapes (such as rectangles)
  fill(0); // set the fill color to black
}

// draw loop
void draw() {
  background(255, 200, 50);

  // int i=0; a new variable that we use for counting, i, will start at value 0;
  // i < temp.length; as long as this condition is true, run through the for loop
  // i++ - increment i after each loop (this could be any other statement,
  //  but most of the time you will see something along those lines).
  for (int i=0; i < temp.length; i++) { 

    // everything inside {} is executed every time the loop runs
    // rectangle with the parameters (x,y,w,h) - check the reference for details
    // i*barw+margin,height-margin  : this is the upper left corner of the rectangle, but since our 
    // rectangle has a negative height of -temp[i], it becomes the lower left corner
    // height is a system variable that tells us the screen height (150 in this case)
    // barw-1: we want a fine 1 pixel line between each bar, therefore make it 1 pixel thinner
    // -temp[i] is how high our rectangle would be. since the y axis points down, we use 
    // a negative value to draw it upwards.
    rect(i*barw+margin, height-margin, barw-1, -temp[i]);
  };
}

// i put this down here just for convenience, 
// so that you do not have to scroll down for the main code.
// the variables outside the setup() and draw() loops are  
// global variables, they are visible from everywhere in our program
// the process: first, all variables in the global space are read, 
// regardles of whether they are above or below setup() 
// second, setup(); is called, third comes draw()
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

