// load a live data feed from http://earthquake.usgs.gov/earthquakes/feed/v0.1/
Table quakes;
String file = "http://earthquake.usgs.gov/earthquakes/feed/v0.1/summary/2.5_month.csv";
String worldmap = "BlankMap-Equirectangular.svg";
PShape world;
float maxM;
float minM;

void setup() {
  size(1200, 600);

  // load shape allows us to load a vector .svg file
  world = loadShape(worldmap);
  quakes = loadTable(file, "header");

  // getColumnTitles gives us the first row in the table as an array of strings
  String[] titles = quakes.getColumnTitles();

  //getFloatColumn gives us a whole column as a float array (this also exists for int and string)
  // we want to figure out which is the highest and the lowest value in magnitude
  float[] magnitude = quakes.getFloatColumn(4);
  maxM = max(magnitude);
  minM = min(magnitude);

  // use println to debug your program - if you run into a mistake, you
  // can find the mistake by printing out the offending variables at different parts of the 
  // code, to find out when a mistake happens.
  println(minM + "," + maxM);
}

void draw() {
  background(255);
  // here we display the loaded svg file over the whole screen (an equirectangular map)
  shape(world, 0, 0, width, height);
  fill(255, 0, 0, 150);
  noStroke();

  // this sketch parses the table in every frame - this is not recommended for a final program,
  // since it wastes execution time and we only need to do it once. 
  // it should be in the setup section (you can use getFloatColumn)
  
  // this form of the for loop is a convenient abbreviation for looping through arrays and other iterable structures
  // in each run, r will be one element from the array that is returned by quakes.rows
  for (TableRow r : quakes.rows ()) {
    
    // here we use the map function to transform the -180 to 180 range of our coordinates to the width of the screen etc.
    float lng = map(r.getFloat(2), -180, 180, 0, width);
    float lat = map(r.getFloat(1), 90, -90, 0, height);
    float mag = map(sqrt(r.getFloat(4)), minM, maxM, 5, 15);
    ellipse(lng, lat, mag, mag);
  }
}

