int margin = 25;

void setup() {
  size(400, 150);
  noStroke();
  fill(0);
}

void draw() {
  background(255, 200, 50);
  
  // this is our first new method. we use it to determine the bar width and height factor, 
  // so that our chart fits neatly onto the screen, however large it is. 
  // the method is specified below.
  // it passes our data (temp) to the method, and receives an array of two floats
  // this return value is placed into the float array m, which we will use later
  float[] m = barMargins(temp); 
  
  // here is our second method, to draw the bars. it does take our new array and the data
  // as parameters
  drawBars(m, temp);
}

// our method for calculating the margins. it returns a float[] as a data type, 
// and takes an int[] array as the input data
// methods that return values (everything except 'void') always need a return statement
// this tells the method which variable to hand back to whoever called the method
float[] barMargins( int[] inputarray) {
  
  // this wil be our return statement - an array of two values.
  float[] margins = new float[2];
  
  // we define the first value as the bar width. 
  // we calculate it by taking the width of the screen, substract left and right margins,
  // and then divide whatever remains by the number of data values in our array
  margins[0] = (width - 2*margin) /inputarray.length;
  
  // the height factor is harder to calculate. we have to find the largest number in the data first
  // to do this, we will iterate through all data values, and see which one is biggest. 
  // we start with 0, assuming that our data does not contain negative values (for now this will do, but this can be problematic)
  margins[1] = 0;
  
  // here we run through our array, same as before.
  for (int i = 0; i < inputarray.length; i ++ ) {
    // if the data value is larger than what we have stored in margins[1], 
    if (inputarray[i] > margins[1]) {
      // then store the new largest number in margins[1].
      // we will repeat that through the whole array. in the end, 
      // margins[1] will contain the largest number in the data
      margins[1] = inputarray[i];
    }
  }
  // now we 
  margins[1] = (height - 2*margin)/ margins[1];
  return margins;
}

// this is a method for drawing the bars, taking the values we just calculated and the
// data array as parameters.
// void means the the method does not return any value
void drawBars(float[] m, int[] data) {
  // just putting our values into new variables, wf for bar width, hf for height factor
  float wf = m[0];
  float hf = m[1];
  
  // this time, lets move the coordinate system to the lower left corner of our drawing area
  translate(margin, height-margin);
  for (int i=0; i < data.length; i++) {
    // draw a rectangle using our barcode values
    rect(i*wf, 0, wf-1, -data[i]*hf);
  };
}

// our data array
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

