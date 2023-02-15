import processing.svg.*;

boolean record;

void setup() {
  size(800, 800);
}

void draw() {
  if (record) {
    // Note that #### will be replaced with the frame number. Fancy!
    beginRecord(SVG, "frame-####.svg");
  }

  // Draw something good here
  background(255);

  noStroke();
  fill(255, 255, 0); // jaune
  rect(100, 100, 500, 50);
 
  fill(0, 255, 0); // bleu
  circle(100, 200, 100);
  
  stroke(0);
  fill(255);
  ellipse(100, 100, 500, 50);

  if (record) {
    endRecord();
    record = false;
  }
}

void keyPressed() {
  if (keyCode == ENTER) {
    record = true;
  }
}
