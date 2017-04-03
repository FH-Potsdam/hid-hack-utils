  String keytext = "";

PFont font;
void setup() {
  size(800, 450);
  font = createFont("Arial", 60);
  textFont(font, 60);
  textAlign(CENTER);
  noStroke();
  smooth();
}

void draw() {
  fill(0,100);
  rect(0,0,width, height);
  pushMatrix();
  translate(width/2, height/2);
  fill(255);
  text(keytext, 0 , 0);
  popMatrix();
}

void keyPressed(KeyEvent event) {
  println("keyCode="+keyCode+" \tkey="+int(key));
  if (key == CODED) {
    if (keyCode == BACKSPACE) {
      keytext = "Backspace";
    }
    if (keyCode == LEFT) {
      keytext = "Left";
    }
    if (keyCode == RIGHT) {
      keytext = "Right";
    }
    if (keyCode == DOWN) {
      keytext = "Down";
    }
    if (keyCode == UP) {
      keytext = "Up";
    }
    if (keyCode == SHIFT) {
      keytext = "Shift";
    }
    if (keyCode == ALT) {
      keytext = "Alt";
    }
    if (keyCode == CONTROL) {
      keytext = "Control";
    }
    //if (keyCode == RETURN) {
    //  keytext = "Return";
    //}
    if (keyCode == ENTER) {
      keytext = "Enter";
    }
    if (keyCode == 20) {
      keytext = "CAPS LOCK";
    }
   if (keyCode == 112) {
      keytext = "F1";
    }
   if (keyCode == 113) {
      keytext = "F2";
    }
   if (keyCode == 114) {
      keytext = "F3";
 }
   if (keyCode == 115) {
      keytext = "F4";
 }
   if (keyCode == 116) {
      keytext = "F5";
 }
   if (keyCode == 117) {
      keytext = "F6";
 }
   if (keyCode == 118) {
      keytext = "F7";
 }
   if (keyCode == 119) {
      keytext = "F8";
 }
   if (keyCode == 120) {
      keytext = "F9";
 }
   if (keyCode == 121) {
      keytext = "F10";
 }
   if (keyCode == 122) {
      keytext = "F11";
 }
   if (keyCode == 123) {
      keytext = "F12";
    }
    if(keyCode == 157){
      keytext = "Command (macOS)";
    }
  } else {
    keytext = "" + key;
    if(key == 9){
      keytext = "Tab";
    }

    if (key == 32) {
      keytext = "Space";
    }
    if (key == 10) {
      keytext = "Return";
    }
    if (key == 27) {
      keytext = "Escape";
      key = 10; // need this so processing does not quit
    }
    if(key == 8){
      keytext = "Backspace";
    }
  }
  println(keytext);
  // println(event.PRESS);
  // println(event.RELEASE);
  // println(event.TYPE);

}

void keyReleased(KeyEvent event){
  println("released " + event.getKeyCode());

  // println(event.PRESS);
  // println(event.RELEASE);
  // println(event.TYPE);
}

