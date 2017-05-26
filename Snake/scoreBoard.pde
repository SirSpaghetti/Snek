
void drawScore() {
  textAlign(LEFT);
  fill(0);
  text("Score: " + score, 10, 20 );
}

void grid() {
  stroke(0, 0, 0, 40);
  strokeWeight(0.5);
  for (int i = 0; i <= ((width/10) + 1); i++) {
    line(i * 10 - 5, 0, i * 10 - 5, height);
  }

  for (int i = 0; i <= ((height/10) + 1); i++) {
    line(0, i * 10 - 5, width, i * 10 - 5);
  }
  stroke(0);
  strokeWeight(1);
}