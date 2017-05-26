import java.io.*;

int direction, score, lastDirChng;
float deltaFrame, fr = 144;
boolean isMenu = true, isDead = false, isLeaderboard = false, isGame = false, isPaused = false, gridToggle = true, isRecordScore = false;



void setup() {
  size(400, 600 );
  leaderboard();
}

void draw() {
  frameRate(fr);
  if (isMenu) {
    fr = 144;
    menu();
  } else if (isLeaderboard) {
    fr = 144;
    background(#FFEE00);
  } else if (isDead) {
    fr = 144;
    dead();
  } else if (isPaused) {
    fr = 144;
    paused();
  } else if (isGame) {
    fr = gameFr;
    game();
  }
}

void paused() {
  if (gridToggle) {
    background(#F78CE0);
    grid();
  } else {
    background(#F78CE0);
  }
  fill(0, 0, 0, 0);
  stroke(#C140A6);
  strokeWeight(9);
  rect(width/2, height/2, width, height);
  stroke(0);
  strokeWeight(1);
  snakeDraw();
  drawBall();
  drawScore();
  fill(255, 255, 255);
  textAlign(CENTER);
  text("PAUSED", width/2, 150);
  exitGameButton();
  gridToggleButton();
  checkClick();
}

void calcDelta() {
  deltaFrame = (float)(frameCount - lastDirChng)/2;
}

void game() {
  if (gridToggle) {
    background(#F78CE0);
    grid();
  } else {
    background(#F78CE0);
  }
  drawSnake();
  drawBall();
  calcDelta();
  drawScore();
  fill(0, 0, 0, 0);
  stroke(#C140A6);
  strokeWeight(9);
  rect(width/2, height/2, width, height);
  stroke(0);
  strokeWeight(1);
}

void dead() {
  background(#ED2D2D);
  textAlign(CENTER);
  textSize(15);
  fill(255);
  stroke(0);
  text("You are Dead. Press Space to Return to the Menu", width/2, height/2 - 50);
  text("Your final Score was: " + score + ".", width/2, height/2 + 50);
}

void keyPressed() {
  if (isMenu) {
  } else if (isDead) {
    if (keyCode == 32) {
      isMenu = true;
      isGame = false;
    }
  } else if (isLeaderboard) {
    if (keyCode == 32) {
      isMenu = true;
      isLeaderboard = false;
    }
  } else if (isPaused) {
    if (keyCode == 32) {
      isPaused = false;
    }
  } else if (isGame) {
    if (keyCode == 37 && snakeDirection != 2 && deltaFrame >= 0.5) {
      //left arrow
      snakeDirection = 0;
      lastDirChng = frameCount;
    } else if (keyCode == 38 && snakeDirection != 3 && deltaFrame >= 0.5) {
      //up arrow
      snakeDirection = 1;
      lastDirChng = frameCount;
    } else if (keyCode == 39 && snakeDirection != 0 && deltaFrame >= 0.5) {
      // right arrow
      snakeDirection = 2;
      lastDirChng = frameCount;
    } else if (keyCode == 40 && snakeDirection != 1 && deltaFrame >= 0.5) {
      //down arrow
      snakeDirection = 3;
      lastDirChng = frameCount;
    } else if (keyCode == 32) {
      //spaceBar
      isPaused = true;
    }
  }
}