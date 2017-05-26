button btnStart = new button(200, 100, 400, 200, "Start");
button btnLeaderboard = new button(200, 300, 400, 200, "Leaderboard");
button btnExit = new button(200, 500, 400, 200, "Exit Game");
button btnExitGame = new button(0, 0, 0, 0, "");
button btnGridToggle = new button(0, 0, 0, 0, "");

void menu() {
  fr = 144;
  isDead = false;
  background(122);
  startButton();
  leaderboardButton();
  exitButton();
  checkClick();
  setSnakePos();
}

void gridToggleButton() {
  btnGridToggle.setX(width/2);
  btnGridToggle.setY(200);
  btnGridToggle.setWidth(100);
  btnGridToggle.setHeight(50);
  btnGridToggle.setFontSize(15);
  btnGridToggle.setBtnFill(#2FC8F5);
  btnGridToggle.setTextFill(0);
  btnGridToggle.setText("Toggle Grid");
  btnGridToggle.drawBtn();
}

void exitGameButton() {
  btnExitGame.setX(width/2);
  btnExitGame.setY(250);
  btnExitGame.setWidth(100);
  btnExitGame.setHeight(50);
  btnExitGame.setFontSize(15);
  btnExitGame.setBtnFill(#ED2D2D);
  btnExitGame.setTextFill(0);
  btnExitGame.setText("Exit to Menu");
  btnExitGame.drawBtn();
}

void startButton() {
  btnStart.setFontSize(15);
  btnStart.setBtnFill(#1CE527);
  btnStart.setTextFill(0);
  btnStart.drawBtn();
}

void leaderboardButton() {
  btnLeaderboard.setFontSize(15);
  btnLeaderboard.setBtnFill(#FFEE00);
  btnLeaderboard.setTextFill(0);
  btnLeaderboard.drawBtn();
}

void exitButton() {
  btnExit.setFontSize(15);
  btnExit.setBtnFill(#ED2D2D);
  btnExit.setTextFill(0);
  btnExit.drawBtn();
}

void checkClick() {
  if (btnStart.isClicked()) {
    isMenu = false;
    isGame = true;
  }

  if (btnLeaderboard.isClicked()) {
    isMenu = false;
    isLeaderboard = true;
  } 

  if (btnExit.isClicked()) {
    exit();
  }

  if (btnExitGame.isClicked() && isPaused) {
    isMenu = true;
    isGame = false;
    isPaused = false;
    delay(100);
  }

  if (btnGridToggle.isClicked() && gridToggle) {
    gridToggle = false;
    delay(100);
  } else if(btnGridToggle.isClicked()) {
    gridToggle = true;
    delay(100);
  }
}