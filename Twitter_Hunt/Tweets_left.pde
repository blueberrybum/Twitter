int numtwist = 5;
float [] xpos = new float [numtwist];
float [] ypos = new float [numtwist];
float [] xspeed = new float [numtwist];


class Twist{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  PImage twittero;
  
 Twist(){
   c = color(26,183,234);
   xpos = 850;
   ypos = random(1,400);
   xspeed = random(5,15);
 }
 
 void init(){
   twittero = loadImage("twitter2.png");
 }
   
  void display(){
    image(twittero,xpos,ypos,50,50);
  }
  
  void fly(){
    xpos = xpos - xspeed;
    if(xpos<-10){
      xpos = 850;
      
    }
  }
  void splode(){
    
    }
    void tweets(){
   

      }
}


 


