String name;
int age;
boolean happy;

int i;

color red = color(255, 0, 0);
color yellow = color(255, 255, 0);
color green = color(0, 255, 0);
color bkgrnd = color(255);
color off = color(200);

int light = 0;

void setup(){
  size(800, 800);
  println("Hi, my name is "+name);
  println("I am "+age+" years old");
  if(happy){
    println("I clap my hands");
  }else{
    println("I dont clap my hands");
  }
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
  while(i <= 20){
    if(i%2 == 0){
      println(i);
    }
    i++;
  }
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
