// define a table object in the global scope
// at this point, we just declared that we want this variable, 
// but it is still an empty variable
Table table; // http://www.processing.org/reference/Table.html

// this is an opportunity to introduce a new variable type: 
// the string!
String file = "weather.csv";

void setup() {
  
  // here we fill the empty variable with the result from loadTable
  table = loadTable(file, "header");
  
  // the new table object has a method that gives us the number of rows
  // in the file. check reference for more functions
  int rows = table.getRowCount();
  println(rows + " total rows in table"); 

// here we create three arrays for each column in the array.
// for now, we can take this information from the csv file
// note that if we want to use these in a draw function, we
// have to declare them as global variables (i.e. before  setup())
  int day[] = new int[rows];
  int temp[] = new int[rows];
  int wind[] = new int[rows];

// now we iterate through the table object using a for loop
  for (int i = 0; i < rows; i++) {
    
    // we get each row by its index.
    TableRow row = table.getRow(i);
    
    // and we fill the appropriate slot in the array from the value from the table
    // note that "day" etc. are the names of the columns in the file
    // we use row.getInt, because we know the table contains integer values
    // the program does not know this, for loadTable, all values are just texts
    // 
    day[i] = row.getInt("day");
    temp[i] = row.getInt("temperature");
    wind[i] = row.getInt("wind");
  }
}

