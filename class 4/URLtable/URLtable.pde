// load a live data feed from http://earthquake.usgs.gov/earthquakes/feed/v0.1/
Table quakes;
String file = "http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/2.5_month.csv";
String worldmap = "BlankMap-Equirectangular.svg";
PShape world;


void setup() {
  size(1200, 600);
  world = loadShape(worldmap);
  quakes = loadTable(file, "header");

  String[] titles = quakes.getColumnTitles();

  println(titles);
}

void draw() {
  background(255);
  shape(world, 0, 0, width, height);
  fill(255, 0, 0, 150);
  noStroke();

  for (TableRow r : quakes.rows ()) {
    float lng = deg2Screen(r.getFloat(2)+180);
    float lat = deg2Screen(r.getFloat(1)+90);
    float mag = sqrt(r.getFloat(4));
    ellipse(lng, lat, mag, mag);
  }
}

float deg2Screen(float f) {
  return f*width/360;
}

