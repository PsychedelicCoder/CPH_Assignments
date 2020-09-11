String str1 = "Julius";
//char data[] = {'J', 'u', 'l', 'i', 'u', 's'};
int age = 21;
boolean happy = true;

void setup() {
  
 size(600,600);
 background(255);
  
}

void draw(){

println("Hi, my name is " + str1);
println("I am " + age + " years old.");

if (happy == true) {
println("I clap my hands");
} else if (happy == false) {
println("I don't clap my hands"); 
}
}

void mousePressed() { 
  happy =! happy;
}
