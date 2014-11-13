class Gun{
   color c;
  float xpos;
  float ypos;
  PImage shoot;

 
 
Gun(){
  xpos=mouseX;
  ypos=mouseY;
  c = color(0);
    
  
 
  
}
void init(){
 shoot = loadImage("scope.png");
 image(shoot,mouseX,mouseY,70,50);
}
void display(){

}
}
  
