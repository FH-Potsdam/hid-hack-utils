String mousetext = "";
String additionaltext = "";

PFont font;

void setup(){
 size(800, 450);
  font = createFont("Arial", 60);
  textFont(font, 60);
  textAlign(CENTER);
  noStroke();
  smooth();

}

void draw(){
  fill(0,100);
  rect(0,0,width, height);
  pushMatrix();
  translate(width/2, height/2);
  fill(255);
  text(mousetext, 0 , 0);
  text(additionaltext, 0 , 70);

  popMatrix();

if(mouseX == pmouseX && mouseY == pmouseY && mousePressed != true){
  // not moving anymore
  additionaltext = "";
}
}

void mousePressed(MouseEvent event){
  if(mouseButton == LEFT){
    mousetext = "Left";
  }
  if(mouseButton == RIGHT){
    mousetext = "Right";
  }

  if(mouseButton == CENTER){
    mousetext = "Center";
  }
}

void mouseWheel(MouseEvent event) {
  float e = event.getCount();
  println(e);
  additionaltext = "" + e + " (Mouse Wheel)";
}

void mouseDragged(MouseEvent event){
  additionaltext = "mouse is dragged";
}

void mouseMoved(MouseEvent event){
  additionaltext = "mouse is moving";
}
void mouseReleased() {
  additionaltext = "";
  mousetext = "";
}