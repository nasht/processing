
int x = 0;
int y = 0;

int minBranch = 6;
int maxBranch = 14;
int maxDepth = 5;
float maxScale = 0.5;
float minScale = 0.27;
float lenOffsetMax = 0.8;
float lenOffsetMin = 0.35;

int curBranch = 0;

void setup() {
  background(255);
  size(800,800);
  strokeWeight(2);

  noLoop();
  x = width/2;
  y = height/2;
 
  smooth();
  
}

void draw() {
  translate(x,y);
  branch(0); 
}

void branch(int depth) {
  
  float len = height*0.5;

 int numBranch = maxBranch;
  
 
 // println("depth = " + depth);
 int rotDegrees = 290;
 if (depth > maxDepth) {
   //println("Depth is greater, returning");
   return;
 }

  if (depth < maxDepth) {
    
    //println("Depth = " + depth);
    int i =0;
    while( i < numBranch) {
      
      i++;
      pushMatrix();
        //len = height * random(lenOffsetMin, lenOffsetMax);
        len = height * 0.3;
        if (depth > 3 ) {
          stroke(#7E1A86);
          //println("Setting color!");
        }
        else {
           stroke(#6FF000);//Green);
        }
         //stroke(
        //ellipse(x,y-len,5,5);
        rotate(radians(rotDegrees));
        //rotDegrees+= (int) random(-15,15) + (int)360/(numBranch-1);
        rotDegrees+= (int)360/(numBranch-1);
        line(0,0,0,-len); 
        pushMatrix();
          stroke(#FFDA03);
          strokeWeight(2);
          ellipse(0,0,60,60);
        popMatrix();   
        translate(0,-len);
        scale( random(minScale, maxScale));
        
        branch(depth+1);   
      popMatrix(); 
     
    }
    
 } 
 //}
}
