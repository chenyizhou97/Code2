float elX = 30;
float elY = 30;
float radius = 20;
float rectX = 250;
float rectY = 220;

float elXSpeed = 1;
float elYSpeed = 3;
boolean value = false;

void setup() {
  size(500, 400);
}
void draw() {
  noStroke();
  background(136, 255, 145);
  if (value == true) {
    textSize(30);
    text("Doom!!", 40, 50);
  }
  if (value==false) {
    background(136, 255, 145);
  }


  fill(200, 100, 150);
  ellipse(elX, elY, radius, radius);


  if (value == false) {
    fill( 50, 100, 234);
    rectMode(RADIUS);
    rect( rectX, rectY, 60, 30);
  } else {
    fill( 50, 100, 234);
    rectMode(RADIUS);
    rect( rectX, rectY, 60, 30);
  }

  if (mouseX >rectX-60 && mouseX < rectX+60 && mouseY > rectY-30 && mouseY < rectY+30) {
    fill( 100, 200, 234);
    rectMode(RADIUS);
    rect( rectX, rectY, 60, 30);
  }



  elX += elXSpeed;
  elY += elYSpeed;

  //Bounce off the button
  if (elY+radius/2 > rectY-30 && elX > rectX-60 && elX < rectX+60) {
    elYSpeed *= -1;
    if (value == false) {
      value = true;
    } else if (value == true) {
      value = false;
    }
  }//top
  if (elY-radius/2 > rectY+30 && elX > rectX-60 && elX < rectX+60) {
    elYSpeed *= -1;
    if (value == false) {
      value = true;
    } else if (value == true) {
      value = false;
    }
  }
  if (elX+radius/2 < rectX-60 && elY > rectY-30 && elY < rectY+30) {
    elXSpeed *= -1;
    if (value == false) {
      value = true;
    } else if (value == true) {
      value = false;
    }
  }
  if (elX-radius/2 < rectX+60 && elY > rectY-30 && elY < rectY+30) {
    elXSpeed *= -1;
    if (value == false) {
      value = true;
    } else if (value == true) {
      value = false;
    }
  }

  //Bounce off the edges
  if (elY>height) {
    elYSpeed *= -1;
  }
  if (elX>width) {
    elXSpeed = elXSpeed * -1;
  }
  if (elY<0) {
    elYSpeed = elYSpeed * -1;
  }
  if (elX<0) {
    elXSpeed = elXSpeed * -1;
  }
}
void mousePressed() {
  if (value==false && mouseX >rectX-60 && mouseX < rectX+60 && mouseY > rectY-30 && mouseY < rectY+30) {
    value = true;
  } else if (value == true && mouseX >rectX-60 && mouseX < rectX+60 && mouseY > rectY-30 && mouseY < rectY+30) {
    value = false;
  }
}