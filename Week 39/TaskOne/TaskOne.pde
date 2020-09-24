/* 
 
 Syntax'en for et array.
 datatype[] var
 var[element] = value
 var.length
 
 1.a Create an integer array with the values { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 } 
 1.b implement your own sorting algorithm for the int[] array, by creating a method that takes in the int[] array 
 and loops through it with a for loop. for every step in the for loop, you must compare the values of array[i] and array[i + 1] 
 and swap them if [i] is greater than [i + 1]. 
 1.c call the method created in 1.b in a while loop from setup(), until the list is sorted.
 1.d Add a boolean to keep track of when the list is sorted to avoid creating an infinite loop.
 
 */

int numbers [] = { 8, 9, 1, 5, 11, 13, 7, 4, 6, 3, 12, 10, 2 };

void setup() {
  int i = 0;
  while (i < numbers.length) {
    i++;
    sortArray();
  }
  println(numbers);
}

boolean sortArray() {
  for (int i = 0; i < numbers.length - 1; i++) {
    if (numbers[i] > numbers[i + 1]) {
      swap(numbers, i, i + 1);
    }
  }
  return true;
}

void swap (int [] Array_, int a, int b) {
  int temp = Array_[a];
  Array_[a] = Array_[b] ;
  Array_[b] = temp;
}


// numbers = sort(numbers);
// println(numbers);
// Prints the contents of the sorted array
