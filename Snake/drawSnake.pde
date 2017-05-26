int snakePos[][] = new int[3000][2];
int snakeLength = 3, snakeSpeedX, snakeSpeedY, snakeSpeed = 10, snakeStartX, snakeStartY, snakeDirection = 0, 
  snakeX = 10, snakeY = 10, multiplyX, multiplyY, tempX = 0, tempY;

void drawSnake() {
  snakeDraw();
  snakeFollow();
  collision();
  move();
}

void setSnakePos() {
  gameFr = 8;
  snakeLength = 3;

  snakeStartX = width/2;
  snakeStartY = height/2;

  for (int i = 0; i <= snakeLength; i++) {
    snakePos[i][0] = snakeStartX + (10 * i);
    snakePos[i][1] = snakeStartY;
  }

  score = 0;
}

void snakeDraw() {
  
  rectMode(CENTER);
  for (int i = 0; i < snakeLength; i++) {
    if(i == 0){
      fill(#044D11);
    } else {
      fill(#14E02D);
    }
    rect(snakePos[i][0], snakePos[i][1], snakeX, snakeY);
  }
}

void snakeFollow() {
  for (int i = snakeLength; i > 0; i--) {
    snakePos[i][0] = snakePos[i - 1][0];
    snakePos[i][1] = snakePos[i - 1][1];
  }
}



void move() {
  if (snakeDirection == 0) {
    snakeSpeedX = -snakeSpeed;
    snakeSpeedY = 0;
    snakePos[0][0] += snakeSpeedX;
    snakePos[0][1] += snakeSpeedY;
  } else if (snakeDirection == 1) {
    snakeSpeedX = 0;
    snakeSpeedY = -snakeSpeed;
    snakePos[0][0] += snakeSpeedX;
    snakePos[0][1] += snakeSpeedY;
  } else if (snakeDirection == 2) {
    snakeSpeedX = snakeSpeed;
    snakeSpeedY = 0;
    snakePos[0][0] += snakeSpeedX;
    snakePos[0][1] += snakeSpeedY;
  } else if (snakeDirection == 3) {
    snakeSpeedX = 0;
    snakeSpeedY = snakeSpeed;
    snakePos[0][0] += snakeSpeedX;
    snakePos[0][1] += snakeSpeedY;
  }
}

void collision() {
  if (snakePos[0][0] <= (0 + snakeX/2) || snakePos[0][0] >= (width - snakeX/2) || snakePos[0][1] <= (0 + snakeY/2) || snakePos[0][1] >= (height - snakeY/2)) {
    isDead = true;
  }

  for (int i = 2; i < snakeLength; i++) {
    if (snakePos[0][0] == snakePos[i][0] && snakePos[0][1] == snakePos[i][1]) {
      isDead = true;
    }
  }
}