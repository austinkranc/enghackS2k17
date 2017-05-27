//PImage img,img2;
//PShape baseball;
void setup() {
  //img = loadImage("og.jpg");
  //img2 = loadImage("greeny.png");
  fullScreen(P3D);
  textFont(createFont("Arial", 60));
}
boolean angery=false;
void draw() {
  float[][] grids= new float[int(width/2)+1][int(height/2)+1]
  fill(255);
  ellipseMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER,CENTER);
  background(0);
  
  if(angery){
    color+=50;
    background(255);
    fill(0);
    rect(mouseX,mouseY,width/2,width/2);
  }
}
void mousePressed() {
  angery=true;
}
void mouseReleased() {
  angery=false;
}