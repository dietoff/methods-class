// load a live data feed from http://earthquake.usgs.gov/earthquakes/feed/v0.1/
Table quakes;
String file = "http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/2.5_month.csv";
String worldmap = "BlankMap-Equirectangular.svg";
PShape world;
float[] lat;
float[] lng;
float[] mag;
float minm, maxm;

void setup() {
  size(1200, 600);
  world = loadShape(worldmap);
  quakes = loadTable(file, "header");

  String[] titles = quakes.getColumnTitles();
  lat = quakes.getFloatColumn(1);
  lng = quakes.getFloatColumn(2);
  mag = quakes.getFloatColumn(4);
  
  minm = min(mag);
  maxm = max(mag);
  
  // print out some basic stats
  println(titles);
  println(min(lat) + "," + max(lat));
  println(min(lng) + "," + max(lng));
  println(min(mag) + "," + max(mag));
}

void draw() {
  background(255);
  shape(world, 0, 0, width, height);
  fill(255, 0, 0, 150);
  noStroke();
  
  for (int i = 0; i< lat.length; i++ ) {
    float x = deg2Screen(lng[i]+180);
    float y = deg2Screen(lat[i]+90);
    float dia = sqrt(mag[i]);
    float d = map(dia, minm, maxm, 1,100);
    ellipse(x, y, d, d);
  }
}

float deg2Screen(float f) {
  return f*width/360;
}


