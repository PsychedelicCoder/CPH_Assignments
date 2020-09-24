/*
 4.a Write a method that takes in an integer as a parameter and prints all values between 0 and 100 
 that are divisible by the parameter received.
 
 4.b add the following array to your code: int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 }
 
 4.c Write a method that returns a random element from the above array.
 
 4.d Write a function that takes an integer as a parameter and prints the number. After that, it subtracts one from the input 
 and calls itself again (recursion). If the input is less than zero, it should no longer call itself.
 
 4.e Write a function that takes two integers as parameters and prints both of them seperated by a tab ( \t ). 
 Then have the function calculate and print the fibunacci sequence by calling itself. If the input is greater than 10000, then stop. 
 Start the function by calling it from setup with the input (1, 1). 
 */

void setup() {

  something(10);
  println(returnArray());
  recFun(10);
  tabFun(1, 1);
}

void draw() {
}
