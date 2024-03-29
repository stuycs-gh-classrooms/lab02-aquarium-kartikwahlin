class Tank{
  int x;
  int y;
  int h;
  int fH;
  int w;
  int numAnimals;//number of animals
  Tank(int tankX,int tankY,int tankW,int tankH,int floorH){
    x=tankX;
    y=tankY;
    w=tankW;
    h=tankH;
    fH=floorH;
    numAnimals=0;
  }//constructinator
  
  void display(){
    rectMode(CORNER);
    fill(90,188,216);
    rect(x,y,w,h);
    fill(194, 178, 128);
    rect(x,y+h-fH,w,fH);
    for (int i=0;i<numAnimals;i++){
      (creatures.get(i)).display();
    }
    for (int i=0;i<numFoods;i++){
      (foods.get(i)).display();
    }
  }//display
  void addFood(int x,int y){
   foods.add(new Food(x,y)); 
   numFoods+=1;
  }
  void addAnimal(int x,int y){
    creatures.add(new Animal(x,y,1,1,10));
    numAnimals+=1;
  }//addAnimal

  void addCrab(int x){
   creatures.add(new Crab(x,0,1,1,10)); 
   numAnimals+=1;
  }//addCrab

  void addFish(int x,int y){
    creatures.add(new Fish(x,y,1,1,10));
    numAnimals+=1;
  }
  void addGF(int x, int y){ //adds a goldfish
   creatures.add(new Goldfish(x,y,1,1,10));
   numAnimals+=1;
  }
  void addTurtle(int x,int y){
    creatures.add(new Turtle(x,y,1,1,10));
    numAnimals+=1;
  }
  
  void moveAnimals(){ //Runs all animal life functions
   for (int i=0;i<numAnimals;i++){
     (creatures.get(i)).move();
   }
   for (int i=0;i<numFoods;i++){
     (foods.get(i)).move();
   }
   for (int i=0;i<numAnimals;i++){
     (creatures.get(i)).eat();
   }
   for (int i=0;i<numAnimals;i++){
     (creatures.get(i)).starve();
     if((creatures.get(i)).die()){
       creatures.remove(i);
       numAnimals-=1;
     }
   }
  }//moveAnimals
  
}//Tank
