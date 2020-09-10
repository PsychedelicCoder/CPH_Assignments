int a = (int) random(0,10);
int b = (int) random(0,10);

int x = (int) random(0,30);
int y = (int) random(0,30);
int z = (int) random(0,30);

void setup(){
  
  
}


void draw(){
  
  
  if ((a+b == 10) || (a == 10) || (b == 10)) {
  println("Succes!");
  } 
  else { 
    println("Failure!");
  }
  
  
  if (x+y+z == 30) {
   println("Succes!");
  }
  else if (x == 10 || x == 20 || x == 30 || y == 10 || y == 20 || y == 30 || z == 10 || z == 20 || z == 30) {
   println("Failure!"); 
  }
  
  
  
}
