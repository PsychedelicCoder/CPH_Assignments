int red = 255;
int green = 255;
int yellow = 255;
int black = 0;
int gray = 150;

void setup(){
  size(800,800);
}

void draw(){
  
rectMode(CENTER);
ellipseMode(CENTER);
  
  // Draw the traffic light box
 fill(black);  
rect(400,400,300,600);

  //Draw the yellow traffic light 'middle'
 fill(yellow,yellow,0);
ellipse(400,400,100,100); 

  //Draw green traffic light 'upper'
if (keyPressed == true){
 fill(0,green,0);
} else {
 fill(gray,gray,gray);
}
ellipse(400,200,100,100);
  
  //Draw the red traffic light 'lower'
 fill(red,0,0);
ellipse(400,600,100,100);
  
  
  
}
