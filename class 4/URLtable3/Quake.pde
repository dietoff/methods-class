// using the class keyword we define a new class with the name Quake
class Quake {

  // these are the variables defined for this class
  float lat;
  float lon;
  float mag;

  // this is the constructor of the class - it is called when we want to create a new object based on this class.
  // We invoke it using the 'new Quake(lat,lng,mag)' in the main code.
  // a class can have multiple constructors with different paramenters, but they all need to have the name of the class
  Quake(float lt, float ln, float m) {
    lat = lt;
    lon = ln;
    mag = m;
  }

  // this is for example a constructor that does not need parameters, it sets all values to 0
  Quake() {
    lat = 0;
    lon = 0;
    mag = 0;
  }

// this is a method inside our class - it will handle rendering our quake in the appropriate position of the screen
  void render(int w, int h) {
    float x = map(lon, -180, 180, 0, w);
    float y = map(lat, 90, -90, 0, h);
    float d = sqrt(mag);
    ellipse(x, y, d, d);
  }
}

