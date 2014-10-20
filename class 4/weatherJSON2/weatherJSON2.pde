import java.util.Date; 
import java.text.SimpleDateFormat;

// Created by Zacharias Fox
JSONObject json;

// Here's the URL we're getting our weather data from
String url = "http://api.openweathermap.org/data/2.5/forecast/daily?q=Boston,MA&mode=json&units=metric&cnt=5";

// and storing it in this JSON array
JSONArray jsonData;

// Here's where we're going to store the city string
String city = "";

// Here's where we're going to store the forecast times
String[] times;

// Here's where going to store the clouds data for each day
int[] clouds;

// Here's where we're going to store the min temperatures for each day
float[] minTemps;

// Here's where we're going to store the max temperatures for each day
float[] maxTemps;

// Initialize our PImages for sunny, partly cloudy, and cloudy
PImage sunny;
PImage partlyCloudy;
PImage cloudy;


void setup() {
  size(1000, 250);

  json = loadJSONObject(url);

  // Set our "city" string to the city from the JSON
  city = json.getJSONObject("city").getString("name");

  jsonData = json.getJSONArray("list");
  int size = jsonData.size();
  
  // these will hold our data
  times = new String[size];
  clouds = new int[size];
  minTemps = new float[size];
  maxTemps = new float[size];

  // Get all forecast times (dates) from the JSON
  for (int i=0; i < jsonData.size (); i++) {

    JSONObject feed = jsonData.getJSONObject(i);
    
    long tmp = feed.getLong("dt");
    Date t = new Date(tmp*1000L); //<>//
    SimpleDateFormat sdf = new SimpleDateFormat("MM-dd-yyyy");
    times[i] = sdf.format(t);
    clouds[i] = feed.getInt("clouds");
    minTemps[i] = feed.getJSONObject("temp").getFloat("min");
    maxTemps[i] = feed.getJSONObject("temp").getFloat("max");
  }

  // Define our images for sunny, partly cloudy, and cloudy
  sunny = loadImage("sunny.png");
  partlyCloudy = loadImage("partlyCloudy.png");
  cloudy = loadImage("cloudy.png");
}

void draw() {

  background(0);

  textAlign(CENTER);
  textSize(20);
  fill(255);
  imageMode(CENTER);

  text("5-day Forecast", width/2, 30);
  text(city, width/2, 50);

  for (int i = 0; i < times.length; i++) {
    text(times[i], (i + 1) * width/6, 100);
    if (clouds[i] <= 33) {
      image(sunny, (i + 1) * width/6, 140, 60, 60);
    } else if (clouds[i] > 33 && clouds[i] <= 66) {
      image(partlyCloudy, (i + 1) * width/6, 140, 60, 60);
    } else if (clouds[i] > 66) {
      image(cloudy, (i + 1) * width/6, 140, 60, 60);
    }
    text(round(minTemps[i]) + "\u00B0", (i + 1) * width/6 - 25, 200);
    text(round(maxTemps[i]) + "\u00B0", (i + 1) * width/6 + 25, 200);
  }
}
