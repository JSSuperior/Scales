void setup(){
  size(550,400);
  //noLoop();
  //frameRate(3);
}

void draw(){
  for (int x = 0; x <= 410; x = x + 10)
  {
    for (int y = 0; y <= 410; y = y + 10)
    {
      scales(x,y);
    }
  }
  trimD();
  faceplate();
  trims();
  shell();
  imprints();
  doodads();
  
  coordata();
}

void scales(int x, int y){
  //Random Colors
  int a = (int)(Math.random()*256);
  int b = (int)(Math.random()*256);
  int c = (int)(Math.random()*256);
 //int a = 255;
 //int b = 255;
 //int c = 255;
  
  noStroke();
  fill(a,b,c);
  
  fill(a,b,c);
  ellipse(x-7,y,20,20);
  ellipse(x+7,y,20,20);
  stroke(a,b,c);
  strokeWeight(10);
  line(x,y+20,x,y+5);
}

void trimD(){
  //Dark Trim
  noStroke();
  fill(43, 43, 43);
  rect(0,10,400,40);
  rect(0,350,400,40);
  rect(10,0,20,400);
  rect(370,0,120,400);
  
  //Circular Shape
  noFill();
  stroke(43, 43, 43);
  strokeWeight(50);
  ellipse(200,200,500,400);
 
}

void faceplate(){
  //Faceplate Overlay
  noStroke();
  fill(61, 61, 61);
  rect(0,0,400,40);
  rect(0,360,400,40);
  rect(0,0,20,400);
  rect(380,0,170,400);
  
  //Circluar Shape
  noFill();
  stroke(61, 61, 61);
  strokeWeight(50);
  ellipse(200,200,600,400);
}

void trims(){
  //Silver Trim
  noFill();
  stroke(199, 199, 199);
  strokeWeight(20);
  rect(0,0,550,400);
}

void shell(){
  //Brown Shell
  noFill();
  stroke(163, 89, 28);
  strokeWeight(15);
  rect(0,0,550,400);
}

void imprints(){
  //Outer Imprint
  noFill();
  stroke(43, 43, 43);
  strokeWeight(5);
  rect(400,45,120,310);
  rect(410,55,100,80);
  rect(410,145,100,80);
  
  //Grate or Something
  noFill();
  strokeWeight(5);
  for(int y = 240; y <= 300; y = y + 7)
    line(420,y,500,y);
  
  //Knob Imprints
  noStroke();
  fill(43,43,43);
  //bottom Three
  ellipse(425,330,30,30);
  ellipse(460,330,30,30);
  ellipse(495,330,30,30);
  //Top two
  ellipse(460,95,70,70);
  ellipse(460,185,70,70);
}

void doodads(){
  fill(199, 199, 199);
  //bottom Three Plugs
  ellipse(425,330,15,15);
  ellipse(460,330,15,15);
  ellipse(495,330,15,15);
  //Holes
  fill(28, 28, 28);
  ellipse(425,330,10,10);
  ellipse(460,330,10,10);
  ellipse(495,330,10,10);
  
  //Top Two Dials
  fill(199, 199, 199);
  ellipse(460,95,60,60);
  ellipse(460,185,60,60);
  //fill(133, 133, 133);
  //ellipse(460,95,40,40);
  //ellipse(460,185,40,40);
  noFill();
  stroke(133,133,133);
  strokeWeight(10);
  line(440,79,480,110);
  line(440,200,480,170);
  
}

void coordata(){
  System.out.println(mouseX);
  System.out.println(mouseY);
}
