String name;
int age;
boolean happy;

int i;
int a, b;
int x, y, z;

color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color bkgrnd = color(255);
color off = color(200);

int light = 0;

void setup(){
  size(800, 800);
  name = "AlberKops";
  age = 20;
  println("Hi, my name is "+name);
  println("I am "+age+" years old");
  if(happy){
    println("I clap my hands");
  }else{
    println("I dont clap my hands");
  }
  
  MethodOne();
  MethodTwo();
  task6();
  task7();
}

void draw(){
  background(bkgrnd);
  fill(0);
  //trafic light
  rect(250, 100, 300, 600);
  if(light == 0){
    fill(red);
  }else{
    fill(off);
  }
  circle(400, 200, 150);
  if(light == 1){
    fill(yellow);
  }else{
    fill(off);
  }
  circle(400, 400, 150);
  if(light == 2){
    fill(green);
  }else{
    fill(off);
  }
  circle(400, 600, 150);
  
  //print number 1-20
  /*for(int i = 0; i <= 20; i++){
    println(i);
  }*/
  
  //print even numbers 1-20
  /*for(int w = 0; w <= 20; w++){
    if(w%2 == 0){ 
      println(w);
    }
  }*/
  
  //while loop print even numbers 1-20
  /*while(i <= 20){
    if(i%2 == 0){
      println(i);
    }
    i++;
  }*/
}

void keyPressed(){
  if(key == 'q'){
    light = 0;
  }else if(key == 'w'){
    light = 1;
  }else if(key == 'e'){
    light = 2;
  }
}

void MethodOne(){
  String output;
  int i = 1000;
  int max = 10;
  if(i > max){
    output = "i is greater than "+max+".";
    println(output);
  }
  //println(output);
}

void MethodTwo(){
  int weekday = 8;
  int d = constrain(weekday, 0, 6);
  boolean weekend = false;
  String[] currDay = new String[7];
  currDay[0] = "Monday";
  currDay[1] = "Tuesday";
  currDay[2] = "Wednesday";
  currDay[3] = "Thursday";
  currDay[4] = "Friday";
  currDay[5] = "Saturday";
  currDay[6] = "Sunday";
  
  if(weekday < 5){
    weekend = false;
  }else{
    weekend = true;
  }
  
  println(currDay[d]);
  println(weekend);
}

void task6(){
  if(a == 10 || b == 10 || a + b == 10){
    println("success");
  }else{
    println("failure");
  }
  
  if(x + y + z == 30 && x != 10 && x != 20 && x != 30 && y != 10 && y != 20 && y != 30 && z != 10 && z != 20 && z != 30){
    println("sucess");
  }else{
    println("falilure");
  }
}

void task7(){
  int integer = -20;
  final int half = integer/2;
  String s = "six";
  String h = "HALF";
  if(integer > 0){
    while(integer >= 0){
      if(integer == half){
        println(h);
        integer--;
      }else if(integer == 6){
        println(s);
        integer--;
      }else{
        println(integer);
        integer--;
      }
    }
  }else{
    while(integer <= 0){
      if(integer == half){
        println(h);
        integer++;
      }else if(integer == -6){
        println(s);
        integer++;
      }else{
        println(integer);
        integer++;
      }
    }
  }
}
