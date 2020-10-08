boolean jobsDone = true;
int sum;

void setup()
{
  int myArray[] = { 9, 8, 7, 6, 5, 4, 3, 2, 1};
  print(getSumOfAllElementsInArray(myArray));

  if (isJobDone())
  {
    println("Job's done!");
  }
}

boolean isJobDone()
{
  return jobsDone;
}

int getSumOfAllElementsInArray(int[] arr) {
  for (int i = 0; i < arr.length; i++) {
   int sum = arr[i];
  }
  return sum;
}
