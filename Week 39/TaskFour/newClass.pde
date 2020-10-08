void something(int p) {
  for (int i = 0; i <= 100; i++) {
    if (i % p == 0) {
      println(i);
    }
  }
}

int returnArray() {
  int[] arr = { 1, 1, 1, 2, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6, 7, 8, 8, 9, 9, 10 };
  int a = (int)random(arr.length);
  return (arr[a]);
}

void recFun(int a) {
  boolean q = true;
  for (int i = -1; i < a; a--) {
    println(a);
    if (a == -1) {
    }
    q = false;
  }
}

void tabFun(int a, int b) {
  if (a > 10000) {
    return;
  }
  println(a + '\t' + b);
  tabFun(a, a + b);
}
void tabFun() {
}


/*4.e Write a function that takes two integers as parameters and prints both of them seperated by a tab ( \t ). 
 Then have the function calculate and print the fibunacci sequence by calling itself. If the input is greater than 10000, then stop. 
 Start the function by calling it from setup with the input (1, 1). 
 */


/*
 4.d Write a function that takes an integer as a parameter and prints the number. After that, it subtracts one from the input 
 and calls itself again (recursion). If the input is less than zero, it should no longer call itself.
 */
