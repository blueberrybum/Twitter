Gun g = new Gun();
Twist []p = new Twist[5];
Tweet []t = new Tweet[5];
PImage background0;
PImage background;
PImage instructions;
float time;
float score;
float a;
int level;
float startscreen;


void setup(){
 size(800,800); 
 background = loadImage("background2.jpg");
 background0 = loadImage("twitterhunt.jpg");
 instructions = loadImage("instructions.jpg");
 time = 1;
 a = 1;
 startscreen = 1;
 score = 0;
 for (int i=1;i<t.length;i++){
   t[i]=new Tweet();
   p[i] = new Twist();
   g = new Gun();
   level = 0;
   
   
 
  }
}


void draw(){
  if(level==0){
    background(background0);
   if(keyPressed) level = 1;
  }
  if(level == 1){
    background(instructions);
    if (key == 'a') level = 2;
  }
 if(level == 2){
  time = time+a/60;
 
  background(background);
  

    for (int i=1;i<t.length;i++){

    t[i].init();
    t[i].display();
     t[i].fly();
     t[i].splode();
     t[i].mp();
    }
    
    for(int i=1;i<p.length;i++){
      p[i].init();
      p[i].display();
      p[i].fly();
           t[i].mp();

    }
    g.display();
    g.init();
   textSize(20); 
  text(time,0,800);
  text(score,750,750);
  
     
if(time >= 60 && score <=19){
background(0);

textSize(80);
text("Game Over", 275, 400);} 
if(time>=60 && score<=20){
background(0);
fill(0,255,0);
textSize(80);
text("OmFG! YOU WIN!",400,400);



}
}
}

void mousePressed(){
  score = score +1;
  
}
