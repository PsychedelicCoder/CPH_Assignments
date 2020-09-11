void setup() {
  MethodOne(); 
  MethodTwo();
}

/*
  The following method has an error in it. Fix the error and run it.
 The error was a scoping error.
 */

void MethodOne()
{
  int i = 1000; // You are not allowed to change this line. 

  int max = 10;

  if (i > max)
  {
    String output = "i is greater than "+max+".";   
    println(output);
  }
}

/* 
 Finish the following method so that we can change the number assigned 
 to the weekday and it prints the correct output.  
 */
void MethodTwo() 
{
  int weekDay = (int) random(0, 6); // 0 = Monday, 6 = Sunday. 
  boolean weekend = false;

  if (weekDay < 5)
  {
    weekend = false;
    println("Is it weekend? " +weekend);
  } else 
  {
    weekend = true;
    println("Is it weekend? " +weekend);
  }
  //Hvis det er hverdag print en af disse.
  if ((weekend = false) || (weekDay == 0)) {
    println("Today's day is Monday" );
  } else if ((weekend = false) || (weekDay == 1)) {
    println("Today's day is Tuesday");
  } else if ((weekend = false) || (weekDay == 2)) {
    println("Today's day is Wednesday");
  } else if ((weekend = false) || (weekDay == 3)) {
    println("Today's day is Thursday");
  } else if ((weekend = false) || (weekDay == 4)) {
    println("Today's day is Friday");
  }
  //Hvis det er weekend vil en af disse blive printet i consolen.
  else if ((weekend = true) || (weekDay == 5)) {
    println("Today's day is Saturday");
  } else if ((weekend = true) || (weekDay == 6)) {
    println("Today's day is Sunday");
  }
}
