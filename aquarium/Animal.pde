class Animal{
  int x;
  int y;
  int xSpeed;
  int ySpeed;
  int hunger;
  int s;
  int aw;
  int ah;
  float ratio;
  color cc;
  boolean alive;
  Animal(int X,int Y,int Xfast,int Yfast,int size){
    alive=true;
    x=X;
    y=Y;
    xSpeed=Xfast;
    ySpeed=Yfast;
    s=size;
    ah=int(random(2,size));
    aw=int(random(2,size));
    ratio=ah/aw;
    cc=color(0);
  } //5Parameter
  Animal(int sx, int sy){
    alive=true;
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
   fill(cc);
   rect(x,y,2*s,s);
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
  
  
  
  
  
  
  
}//Animal
