Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
PImage fish;
PImage crab;


void setup() {
  size(600, 600);
  noStroke();
  tankW = width;
  tankH = height - 50;
  t = new Tank(tankX, tankY, tankW, tankH, floorH);
  t.display();
}//setup


void draw() {
  background(150);
  t.moveAnimals();
  t.display();
}

void mouseClicked() {

    t.addAnimal(mouseX, mouseY);
  
}
void keyPressed(){
  if(key==' '){
    t.addFish(mouseX,mouseY); 
  }
  if (key=='c'){
   t.addCrab(mouseX); 
  }
}
