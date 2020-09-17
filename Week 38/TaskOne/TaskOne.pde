// 1.a Write a function that prints an empty line and call it from setup();
String name = "Julius";
int age = 21;
String cocaCola = "CocaCola";


void nameAge(String name, int age) {
  println("my name is " + name + " and my age is " + age);
}

void colaFun(String CocaCola) {
  println(CocaCola);
}

void emptyLine() {
  println();
}

void setup() {
  emptyLine();
  colaFun(cocaCola);
  nameAge(name, age);
}


//1.b Write a function that receives a string as a parameter and prints it. call this function from setup()
//1.c Write a function that receives a string called "name" and an integer called "age" and call it from setup with your own name and age. Have the function print the text "My name is \<name\>, I am <age> years old".
