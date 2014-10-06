String[] days = {
  "Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"
};
PFont myFont;

void setup() {
  size(500, 500);
  myFont = createFont("Georgia", 32);
  textFont(myFont);
}

void draw() {
  background(0);
  textAlign(CENTER);
  textSize(60);
  fill(255);
  for (int i = 0; i < days.length; i++) {
    fill(i*20+100);
    text(days[i], width/2, (i+1) * height/8);
  }
}

