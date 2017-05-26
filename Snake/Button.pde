class button {
  //variables
  int btnXPos, btnYPos, btnX, btnY, stroke = 0, fill = 0, hiStroke = 0, hiFill = 255, textFill = 255, textFillHi = 0, fontSize = 30;
  String btnText;
  boolean isHi = false, isClicked = false;
  //constructor
  button(int xPos, int yPos, int x, int y, String text) {
    btnXPos = xPos;
    btnYPos = yPos;
    btnX = x;
    btnY = y;
    btnText = text;
  }

  boolean isHi() {
    if (isHi) {
      return true;
    } else {
      return false;
    }
  }

  boolean isClicked() {
    if (mousePressed && isHi) {
      isClicked = true;
      return isClicked;
    } else {
      isClicked = false;
      return isClicked;
    }
  }

  void drawBtn() {
    if (mouseX <= btnXPos + (btnX/2) && mouseX >= btnXPos - (btnX/2) && mouseY <= btnYPos + (btnY/2) && mouseY >= btnYPos - (btnY/2)) {
      isHi = true;
    } else {
      isHi = false;
    }

    if (isHi) {
      fill(hiFill);
      stroke(hiStroke);
    } else {
      fill(fill);
      stroke(stroke);
    }

    rectMode(CENTER);
    rect(btnXPos, btnYPos, btnX, btnY);

    if (isHi) {
      fill(textFillHi);
    } else {
      fill(textFill);
    }
    textAlign(CENTER, CENTER);
    textSize(fontSize);
    text(btnText, btnXPos, btnYPos);
    isClicked = false;
  }

  void setWidth(int x) {
    btnX = x;
  }

  void setHeight(int y) {
    btnY = y;
  }

  void setX(int x) {
    btnXPos = x;
  }

  void setY(int y) {
    btnYPos = y;
  }

  void setBtnFill(int f) {
    fill = f;
  }

  void setBtnStroke(int s) {
    stroke = s;
  }

  void setHiFill(int f) {
    hiFill = f;
  }

  void setHiStroke(int s) {
    hiStroke = s;
  }

  void setTextFill(int tf) {
    textFill = tf;
  }

  void setTextFillHi(int tf) {
    textFillHi = tf;
  }

  void setFontSize(int fs) {
    fontSize = fs;
  }

  void setText(String t) {
    btnText = t;
  }
}