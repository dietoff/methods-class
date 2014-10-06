// Declare and construct two objects (h1, h2) from the class HLine 
HLine h1 = new HLine(20, 2.0); // here we create the actual objects
HLine h2 = new HLine(50, 2.5); // by calling their constructor as specified
 
void setup() 
{
  size(200, 200);
  frameRate(30);
}

void draw() { 
  background(204);
  h1.update(); // here we call the method “update” within the object
  h2.update();  
} 
 
class HLine { 
  float ypos, speed; 
  HLine (float y, float s) {  // this is what is called the constructor
    ypos = y; 
    speed = s; 
  } 
  HLine (float y) {  // we can have multiple constructors
    ypos = y; 
    speed = 1.0; 
  } 
  void update() { 
    ypos += speed; 
    if (ypos > height) { 
      ypos = 0; 
    } 
    line(0, ypos, width, ypos); 
  } 
} 

