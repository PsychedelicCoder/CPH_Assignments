color redTraffic = color(255, 0, 0);
color yellowTraffic = color(255, 255, 0);
color greenTraffic = color(0, 255, 0);
color grayTraffic = color(150, 150, 150);
color blackBox = color(0, 0, 0);

void setup() {
  size(800, 800);
}

void draw() {

  rectMode(CENTER);
  ellipseMode(CENTER);

  // Draw the traffic light box
  fill(blackBox);  
  rect(400, 400, 300, 600);

  //Draw the yellow traffic light 'middle'
  if (key == '2') {
    fill(yellowTraffic);
  } else {
    fill(grayTraffic);
  }
  ellipse(400, 400, 100, 100); 

  //Draw red traffic light 'upper'
  if (key == '1') {
    fill(redTraffic);
  } else {
    fill(grayTraffic);
  }
  ellipse(400, 200, 100, 100);

  //Draw the green traffic light 'lower'
  if (key == '3') {
    fill(greenTraffic);
  } else {
    fill(grayTraffic);
  }
  ellipse(400, 600, 100, 100);
}
