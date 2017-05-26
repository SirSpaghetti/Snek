float ballPosX, ballPosY, gameFr = 8;
boolean ball = false;

void drawBall() {
  if (!ball) {
    generateCoords();
  }
  rectMode(CENTER);
  fill(#A56A0C);
  rect(ballPosX, ballPosY, 10, 10);
  ball = true;
  ballCollide();
}

void generateCoords() {
  do {
    ballPosX = random(20, width - 20);
  } while (ballPosX % 10 != 0);
  do {
    ballPosY = random(20, width - 20);
  } while (ballPosY % 10 != 0);
}

void ballCollide() {
  if ((snakePos[0][0]) <= (ballPosX + 5) && (snakePos[0][0]) >= (ballPosX - 5) && (snakePos[0][1]) <= (ballPosY + 5) && (snakePos[0][1]) >= (ballPosY - 5)) {
    score+= random(1, 5);
    snakeLength+=3;
    ball = false;
    gameFr+=0.2;
    println(fr);
  }
}