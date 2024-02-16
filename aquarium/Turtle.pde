class Turtle extends Animal {
  int cholesterol;
  int arteryBlockage;
  Turtle(int X,int Y,int Xfast,int Yfast,int size){
   super(X,Y,Xfast,Yfast,size);
   if (y<tankY+tankH+(s/2)-floorH){
    y=tankY+tankH +(s/2)-floorH;
   }
   cc=color(138,154,1);
   belly=2000;
   arteryBlockage=2000;
   rate=1;
   cholesterol=0;
  }
  

  void move(){
    if (frameCount%3==0||(frameCount+1)%3==0){
     if (x<=s+tankX||x>=tankX+tankW-s){
      xSpeed*=-1; 
     }
     if(y<tankY+(s/2)+tankH-floorH||y>=tankY+tankH-(s/2)){
      ySpeed*=-1; 
     }
     x+=xSpeed;
     y+=ySpeed;
    }
  }
  void eat(){
   for (int i=0;i<foods.size();i++){
    if(collisionCheck((foods.get(i)).xval(),(foods.get(i)).yval(),(foods.get(i)).sval())){
      if (hungry+(foods.get(i)).fval()>belly){
       hungry=belly; 

      }
      else{
        hungry += (foods.get(i)).fval();
      }
      cholesterol+=(foods.get(i)).fval();
      foods.remove(i);
      numFoods-=1;
    }
   }//for
  }//eat
  void starve(){
    hungry=hungry-rate;
    cholesterol-=rate*2;
  }//starve
  boolean die(){
   if (hungry<=0||cholesterol>=arteryBlockage){
    alive=false;
    return true;
   }
   else{
     return false;
   }
  }//die
  
}//Turtle
