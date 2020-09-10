int input = 20;

String six = "The number is now 'Six' ... Congrats!";
String half = "HALF! (this sounds kinda angry) ... but we're halfway now.";
String minusSix = "The number is now 'Minus Six' ... Congrats!";

void setup() {

  //Code to handle a input that is greater then 0.
for (int x = input; x > 0; x--) {
  if (x == 6) {
    println(six); 
} else if (x == input / 2) {
    println(half); 
} else if (x == 0) {
    noLoop();
} else
    println(x);
  }
  
  //This code will handle anything that has a value less then zero.
for (int x = input; x < 0; x++) {
    if (x == -6) {
    println(minusSix); 
} else if (x == input / 2) {
    println(half); 
} else if (x == 0) {
    noLoop();
} else
    println(x);
  }
}
