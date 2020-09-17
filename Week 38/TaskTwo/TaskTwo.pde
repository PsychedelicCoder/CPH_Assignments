//2.a Look at the file TaskTwoA and fill out the missing line, using the happy boolean. 
//2.b Write a function that receives to integers as parameters and returns the sum of them.
//2.c Write a function that receives a string and returns it as uppercase. (Hint: ".toUpperCase()". Further hint: https://www.w3schools.com/jsref/jsref_toUpperCase.asp )
//2.d Write a function that receives a string and returns true if the first letter of the string is uppercase. (Hints: ".charAt(0)" and "Character.isUpperCase('a');" )

boolean happy = true;
int a = 45;
int b = 37;
int c = 48;
String name = "this will be written in uppercase";
String trueOrfalse = "This should return TRUE";

int calcSum(int a, int b, int c) {
  return a+b+c;
}

String upperCaseTask(String name) {
  return name.toUpperCase();
}

boolean checkThis(String trueOrfalse) {
  return Character.isUpperCase(trueOrfalse.charAt(0));
}

void setup() {
  if (iAmHappy())
  {
    println("I clap my hands");
  } else
  {
    println("I don't clap my hands");
  }
  println(calcSum(a, b, c));
  println(upperCaseTask(name));
  println(checkThis(trueOrfalse));
}


boolean iAmHappy()
{
  //Fill out what is missing here:
  return happy;
}
