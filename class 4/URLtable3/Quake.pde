class Quake {
  float lat;
  float lon;
  float mag;

  Quake(float lt, float ln, float m) {
    lat = lt;
    lon = ln;
    mag = m;
  }

  void render(int w, int h) {
    float x = deg2Screen(lon+180, w);
    float y = deg2Screen(lat+90, w);
    float d = sqrt(mag);
    ellipse(x, y, d, d);
  }

  float deg2Screen(float f, float wi) {
    return f*wi/360;
  }
}

