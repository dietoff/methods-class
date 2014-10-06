XML xml;
// Created by Zacharias Fox
// Here's the URL we're getting our weather data from
String url = "http://api.openweathermap.org/data/2.5/forecast/daily?q=Boston&mode=json&units=imperial&cnt=5";

// Here's where we're going to store the city string
String city = "";
// Here's where we're going to store the forecast times
XML[] xmlTimes;
String[] times = new String[5];
// Here's where going to store the clouds data for each day
XML[] xmlClouds;
int[] clouds = new int[5];
// Here's where we're going to store all of the temperatures for each day
XML[] xmlTemps;
// Here's where we're going to store the min temperatures for each day
float[] minTemps = new float[5];
// Here's where we're going to store the max temperatures for each day
float[] maxTemps = new float[5];

// Initialize our PImages for sunny, partly cloudy, and cloudy
PImage sunny;
PImage partlyCloudy;
PImage cloudy;

void setup() {
  size(1000, 250);

  xml = loadXML(url);
  println(xml);
  
  // Get the current city from the XML
  XML xmlLocation = xml.getChild("location/name");
  // Set our "city" string to the city from the XML
  city = xmlLocation.getContent();

  // Get all forecast times (dates) from the XML
  xmlTimes = xml.getChildren("forecast/time");
  // Put the times from the XML file into our "times[]" array.
  for (int i = 0; i < xmlTimes.length; i++) {
    times[i] = xmlTimes[i].getString("day");
  }

  // Get all cloud data from the XML
  xmlClouds = xml.getChildren("forecast/time/clouds");
  // Put the cloud data from the XML file into our "clouds[]" array.
  for (int i = 0; i < xmlClouds.length; i++) {
    clouds[i] = xmlClouds[i].getInt("all");
  }

  // Define our images for sunny, partly cloudy, and cloudy
  sunny = loadImage("sunny.png");
  partlyCloudy = loadImage("partlyCloudy.png");
  cloudy = loadImage("cloudy.png");

  // Get all temperatures from the XML
  xmlTemps = xml.getChildren("forecast/time/temperature");
  // Put the min temps from the XML file into our "minTemps[]" array.
  for (int i = 0; i < xmlTemps.length; i++) {
    minTemps[i] = xmlTemps[i].getFloat("min");
  }
  // Put the max temps from the XML file into our "maxTemps[]" array.
  for (int i = 0; i < xmlTemps.length; i++) {
    maxTemps[i] = xmlTemps[i].getFloat("max");
  }
}

void draw() {
  background(0);

  textAlign(CENTER);
  textSize(20);
  fill(255);
  imageMode(CENTER);

  text("5-day Forecast", width/2, 30);
  text(city, width/2, 50);

  for (int i = 0; i < xmlTimes.length; i++) {
    text(times[i], (i + 1) * width/6, 100);
    if (clouds[i] <= 33) {
      image(sunny, (i + 1) * width/6, 140, 60, 60);
    }
    else if (clouds[i] > 33 && clouds[i] <= 66) {
      image(partlyCloudy, (i + 1) * width/6, 140, 60, 60);
    }
    else if (clouds[i] > 66) {
      image(cloudy, (i + 1) * width/6, 140, 60, 60);
    }
    text(round(minTemps[i]) + "\u00B0", (i + 1) * width/6 - 25, 200);
    text(round(maxTemps[i]) + "\u00B0", (i + 1) * width/6 + 25, 200);
  }
}

