
int numtwitter = 5;
//float [] xpos = new float [numtwitter];
//float [] ypos = new float [numtwitter];
//float [] xspeed = new float [numtwitter];


class Tweet{
  color c;
  float xpos;
  float ypos;
  float xspeed;
  PImage twitter;
   PImage dead;

  
 Tweet(){
   c = color(26,183,234);
   xpos = -50;
   ypos = random(1,300);
   xspeed = random(3,15);
 
 }
 
 void init(){
   twitter = loadImage("twitter.png");
   dead=loadImage("birdy.png");
 }
   
  void display(){
    image(twitter,xpos,ypos,50,50);
    }
      
  
  
  void fly(){
    xpos = xpos +xspeed;
    if(xpos>width){
      xpos = 0;
      
    }
  }

  void splode(){
   
    
    }
    void tweets(){
   

      }
void mp(){
if (mousePressed)  {
//if (xpos-mouseX<=10 && ypos - mouseY <=10){
//    image(dead,xpos,ypos,50,50);
if(xpos-mouseX<=10 && ypos-mouseY<=10){
  image(dead,xpos,ypos,50,50);
  textSize(40);
  fill(0);
  text("@the beiber concert. hes sooo hawt!",50,600);

}
}



}
}
 


