Table table;

void setup() {
  table = loadTable("weather.csv", "header");
  println(table.getRowCount() + " total rows in table"); 
  
for (TableRow row : table.rows()) {    
    int day = row.getInt("day");
    int temp = row.getInt("temperature");
    int wind = row.getInt("wind");
    println("day " + day + ", the temperature was " + temp + ", and wind was " + wind);
  }
}
