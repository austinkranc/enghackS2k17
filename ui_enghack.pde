//PImage img,img2;
//PShape baseball;
void setup() {
  //img = loadImage("og.jpg");
  //img2 = loadImage("greeny.png");
  fullScreen(P3D);
  textFont(createFont("Arial", 60));
}
int occuronce=0;
int [] gridsize={25,50};

int[][] grids= new int[gridsize[0]][gridsize[1]];
void draw() {
  fill(255);
  stroke(0);
  ellipseMode(CENTER);
  //rectMode(CENTER);
  rectMode(CORNER);
  textAlign(CENTER,CENTER);
  background(0);
  for(int y=0;y<gridsize[1];y++){
  for(int x=0;x<gridsize[0];x++){
    
  if(grids[x][y]==1){
  fill(0);
  }else{
  fill(255);
  }  
  rect(x*width/gridsize[0],y*height/gridsize[1],width/gridsize[0],height/gridsize[1]);
  
  }}
  
}
void mouseDragged() {
  for(int y=0;y<gridsize[1];y++){
  for(int x=0;x<gridsize[0];x++){
  if(mouseX>=x*width/gridsize[0]&&mouseX<(x+1)*width/gridsize[0]&&mouseY>=y*height/gridsize[1]&&mouseY<(y+1)*height/gridsize[1]){
  grids[x][y]=1;
  }
  }}
}
void mouseReleased() {
}