int bcCount=1;
int nX =(int)(Math.random()*400)+50;
int nY =(int)(Math.random()*400)+50;
int c1 =(int)(Math.random()*10000)+500;
int c2 =(int)(Math.random()*10000)+500;
Bacteria [] colony1;
Bacteria [] colony2;
void setup()   
{     
  background(128, 128, 128);
  size(500, 500);
  colony1 = new Bacteria[c1];
  for (int i=0; i<colony1.length; i++)
  {
    colony1[i] = new Bacteria();
  }


  colony2 = new Bacteria[c2];
  for (int i=0; i<colony2.length; i++)
  {
    colony2[i] = new Bacteria();
  }
}   
void draw()   
{ 
  c1 =(int)(Math.random()*5000)+500;
  c2 =(int)(Math.random()*5000)+500;
  nX =(int)(Math.random()*400)+50;
  nY =(int)(Math.random()*400)+50;
  fill(128, 128, 128, 15);
  rect(0, 0, 500, 500);
  noStroke();
  for (int i=0; i<colony1.length; i++)
  {
    colony1[i].spread();
    colony1[i].show();
  }

  for (int i=0; i<colony2.length; i++)
  {
    colony2[i].spread();
    colony2[i].show();
  }
}  
void mousePressed()
{ 
  if (mousePressed && (mouseButton == LEFT)) {
    if (bcCount==1) {
      for (int i=0; i<colony1.length; i++)
      {
        colony1[i] = new Bacteria();
      }
      bcCount++;
    } else if (bcCount==2) {
      for (int i=0; i<colony2.length; i++)
      {
        colony2[i] = new Bacteria();
      }
      bcCount=1;
    }
  } else if (mousePressed && (mouseButton == RIGHT)) {
    bcCount=1;
    background(128, 128, 128);
    redraw();
    for (int i=0; i<colony1.length; i++)
    {
      colony1[i] = new Bacteria();
    }
    for (int i=0; i<colony2.length; i++)
    {
      colony2[i] = new Bacteria();
    }
  }
}
class Bacteria    
{  
  int myColor;
  int myX, myY;
  Bacteria() {
    //myColor=color((int)(Math.random()*200)+50,(int)(Math.random()*200)+50,(int)(Math.random()*200)+50);
    myColor=color(0, 255, 0);
    myX= nX;
    myY=nY;
  }
  void spread() {

    myX= myX + (int)(Math.random()*5)-2;
    myY= myY + (int)(Math.random()*5)-2;
  }
  void show() {
    fill(myColor);
    ellipse(myX, myY, 0.5, 0.5);
  }
}    