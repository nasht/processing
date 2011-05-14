
int x = 0;
int y = 0;
float len = 0;

int numBranch = 8;
int maxDepth = 7;
float brScale =  0.50;
int curBranch = 0;

void setup() {
  background(255);
  size(800,800);
  strokeWeight(20);

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
    stroke(#6FF000);//Green);
 // println("depth = " + depth);
 int rotDegrees = 290;
 if (depth > maxDepth) {
   //println("Depth is greater, returning");
   return;
 }

  if (depth == 0) {
   //print ("Drawing line!");
   line(0,0,0,-len);
   pushMatrix();
     strokeWeight(7);
     fill(255);
     ellipse(0,0,80,80);
   popMatrix();
   //ellipse(0,-len,20,20);
    translate(0,-len);
    scale(brScale);
    branch(depth+1);
  }
 
  else if (depth < maxDepth) {
  
    //println("Depth = " + depth);
    int i =0;
    while( i < numBranch) {
      i++;
      pushMatrix();
         
        //ellipse(x,y-len,5,5);
        rotate(radians(rotDegrees));
        rotDegrees+= (int) random(-15,15) + (int)140/(numBranch-1);
        line(0,0,0,-len); 
        pushMatrix();
          strokeWeight(7);
          ellipse(0,0,20,20);
        popMatrix();   
        translate(0,-len);
        scale(brScale);
        
        branch(depth+1);   
      popMatrix(); 
     
    }
    
 } 
 //}
}
