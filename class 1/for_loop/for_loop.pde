
//line(10,10,10,50);
//line(20,10,20,50);
//line(30,10,30,50);
//line(40,10,40,50);
//line(50,10,50,50);
//line(60,10,60,50);

size (200,200);

for (int i = 0; i <= 200; i = i + 10)  {
    //stroke(i,255-i,0);
    String msg = "vertical nr:" + i;
    println(msg);
    line(i,0,i,200);
}

for (int i = 0; i <= 200; i = i + 10)  {
    line(0,i,200,i);
}
