Table table; // http://www.processing.org/reference/Table.html


void setup() {
  table = loadTable("weather.csv", "header");
  int rows = table.getRowCount();
  println(rows + " total rows in table"); 

  int day[] = new int[rows];
  int temp[] = new int[rows];
  int wind[] = new int[rows];

  for (int i = 0; i < rows; i++) {
    TableRow row = table.getRow(i);
    row.getColumn()
    day[i] = row.getInt("day");
    temp[i] = row.getInt("temperature");
    wind[i] = row.getInt("wind");
  }
}

