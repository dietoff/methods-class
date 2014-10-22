// load a live data feed from http://earthquake.usgs.gov/earthquakes/feed/v0.1/
// here we will introduce a class to structure our code better.
Table feed;
String file = "http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/2.5_month.csv";
String worldmap = "BlankMap-Equirectangular.svg";
PShape world;

// this is the declaration of the array holding our new Quake objects. 
// Processing will find the class definition in the second file
// please study chapter 9 in the introduction to processing book to learn about objects
Quake[] quakeArray;

void setup() {
  size(1200, 600);
  world = loadShape(worldmap);
  feed = loadTable(file, "header");
  int n =  feed.getRowCount();
  
  // heere we create a new array for holding our 'Quake' objects
  quakeArray = new Quake[n];
  println(n);
  int i = 0;
  
  // instead of creating arrays, we combine lat, lng and mag in our new object
  for (TableRow r : feed.rows()) {
    float lat = r.getFloat(1);
    float lng = r.getFloat(2);
    float mag = r.getFloat(4);
    // the 'new' keyword tells processing to create a new object of the class 'Quake'
    quakeArray[i] = new Quake(lat,lng,mag);
    i++;
  }
}

void draw() {
  background(255);
  shape(world, 0, 0, width, height);
  fill(255, 0, 0, 150);
  noStroke();

  for (Quake q:quakeArray) {
    // instead of having to deal with lon, lat etc. here, we pack all of this into our quake object.
    // by using the . we can call the method 'render' in the quake object q
    // in the same way, we could access the types inside the object, for example 'q.lon' to get the stored longitude
    q.render(width, height);
  }
}



