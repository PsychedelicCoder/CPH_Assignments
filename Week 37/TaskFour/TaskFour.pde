void setup(){
  
  
}

void draw(){
 
 while (mousePressed == true) {
  loop();  // Holding down the mouse activates looping
  int numberToCheck=floor(random(0,20));
 if (numberToCheck%2==0) { 
println ("Tallet "+numberToCheck+" er et lige tal");}
 else { noLoop(); }
}
}
