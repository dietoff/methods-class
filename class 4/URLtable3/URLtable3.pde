// load a live data feed from http://earthquake.usgs.gov/earthquakes/feed/v0.1/
Table feed;
String file = "http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/2.5_month.csv";
String worldmap = "BlankMap-Equirectangular.svg";
PShape world;
Quake[] quakes;

void setup() {
  size(1200, 600);
  world = loadShape(worldmap);
  feed = loadTable(file, "header");
  int n =  feed.getRowCount();
  quakes = new Quake[n];
  println(n);
  int i = 0;
  
  for (TableRow r : feed.rows()) {
    float lat = r.getFloat(1);
    float lng = r.getFloat(2);
    float mag = r.getFloat(4);
    quakes[i] = new Quake(lat,lng,mag);
    i++;
  }
}

void draw() {
  background(255);
  shape(world, 0, 0, width, height);
  fill(255, 0, 0, 150);
  noStroke();

  for (Quake q:quakes) {
    q.render(width, height);
  }
}



