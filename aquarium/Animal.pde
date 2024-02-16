class Animal{
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  int hunger;
  int s;
  int belly;
  int hungry;
  int aw;
  int ah;
  int rate;
  float ratio;
  color cc;
  boolean alive;
  Animal(int X,int Y,int Xfast,int Yfast,int size){
    alive=true;
    x=X;
    y=Y;
    belly=1000;
    hungry=belly;
    xSpeed=Xfast;
    ySpeed=Yfast;
    s=size;
    rate=2;
    ah=int(random(2,size));
    aw=int(random(2,size));
    ratio=ah/aw;
    cc=color(0);
  } //5Parameter
  Animal(int sx, int sy){
    alive=true;
    belly=1000;
    hungry=belly;
    rate=2;
    x=sx;
    y=sy;
    xSpeed=int(random(1,3));
    ySpeed=int(random(1,3));
    s=int(random(20,110));
    ah=int(random(s));
    aw=int(random(s));
    
  }
  void display(){
   rectMode(CENTER);
   aw=s*2;
   ah=s;
   fill(cc);
   rect(x,y,aw,ah);

  }
  void move(){
   if (x<=s+tankX||x>=tankX+tankW-s){
    xSpeed*=-1; 
   }
   if(y<=tankY+(s/2)||y>=tankY+tankH-(s/2)){
    ySpeed*=-1; 
   }
   x+=xSpeed;
   y+=ySpeed;
  }
  boolean collisionCheck(int xz, int yz, int sz){
   if (abs(x-xz)<=s+(sz/2)&&abs(y-yz)<=(s+sz)/2){
    return true; 
   }
   else{
     return false;
   }
    
  }//CollCheck
  void eat(){
   for (int i=0;i<foods.size();i++){
    if(collisionCheck((foods.get(i)).xval(),(foods.get(i)).yval(),(foods.get(i)).sval())){
      if (hungry+(foods.get(i)).fval()>belly){
       hungry=belly; 

      }
      else{
        hungry += (foods.get(i)).fval();
      }
      foods.remove(i);
      numFoods-=1;
    }
   }//for
  }//eat
  void starve(){
    hungry=hungry-rate;
  }//starve
  boolean die(){
   if (hungry<=0){
    alive=false;
    return true;
   }
   else{
     return false;
  }
  }
  
  
  
  
  
  
  
}//Animal
