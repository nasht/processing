
int x = 0;
int y = 0;
float len = 0;

int numBranch = 4;
int maxDepth = 12;
float brScale =  0.48;
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
 int rotDegrees = 290;
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
 
  else if (depth < maxDepth) {
  
    println("Depth = " + depth);
    int i =0;
    while( i < numBranch) {
      i++;
      pushMatrix();
         
        //ellipse(x,y-len,5,5);
        rotate(radians(rotDegrees));
        rotDegrees+= (int) random(-15,15) + (int)140/(numBranch-1);
        line(0,0,0,-len); 
        ellipse(0,0,20,20);
        
        
        translate(0,-len);
        scale(brScale);
        
        branch(depth+1);   
      popMatrix(); 
     
    }
    
 } 
 //}
}
