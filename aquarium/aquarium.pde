/*
All animals can die if they go without food for too long. They are all different colors.
Controls: LMB to add food on cursor
1 to add generic Animal class
2 to add Goldfish(these fish will generally stay around the middle and will turn around earlier based on a random #)
3 to add Fish(these fish move twice as fast in the x direction)
4 to add Crab(crabs are restricted to the top of the sand)
5 to add Turtle(turtles move around the sand area and will also die upon being overfed)








*/
Tank t;
int tankX = 0;
int tankY = 50;
int floorH = 100;
int tankW;
int tankH;
int nextNutrition;
int numFoods;
PImage fish;
PImage crab;
ArrayList<Food> foods = new ArrayList<Food>();
ArrayList <Animal>creatures = new ArrayList<Animal>();
void setup() {
  size(600, 600);
  noStroke();
  nextNutrition=30;
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

    t.addFood(mouseX, mouseY);
  
}
void keyPressed(){
  if(key=='3'){
    t.addFish(mouseX,mouseY); 
  }
  if (key=='4'){
   t.addCrab(mouseX); 
  }
  if (key=='2'){
   t.addGF(mouseX,mouseY); 
  }
    if (key=='5'){
   t.addTurtle(mouseX,mouseY); 
  }
  if (key=='1'){
   t.addAnimal(mouseX,mouseY); 
  }
}
