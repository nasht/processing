
int x = 0;
int y = 0;
float len = 0;
int rotDegrees = 290;
int numBranch = 3;
int maxDepth = 9;
float brScale =  1-0.618;
int curBranch = 0;

void setup() {
  size(800,800);
  noLoop();
  x = width/2;
  y = height;
  len =  height*brScale;
  smooth();
  
}

void draw() {

  translate(x,y);
  
   branch(0); 
}

void branch(int depth) {
 // println("depth = " + depth);
 if (depth > maxDepth) {
   //println("Depth is greater, returning");
   return;
 }

  if (depth == 0) {
   //print ("Drawing line!");
   line(0,0,0,-len);
   fill(255);
   ellipse(0,0,80,80);
   
   //ellipse(0,-len,20,20);
    translate(0,-len);
   scale(brScale);
   branch(depth+1);
  }
 
  else  {
   branch(depth+1);
  
    int i =0;
    while( i < numBranch) {
      pushMatrix();
        //ellipse(x,y,5,5);
        //ellipse(x,y-len,5,5);
        rotate(radians(rotDegrees));
        line(x,y,x,y-len);
        branch(depth+1);
      popMatrix(); 
      rotDegrees+= (int) random(-15,15) + (int)140/(numBranch-1);
      i++;
    }
    
 } 
 //}
}
