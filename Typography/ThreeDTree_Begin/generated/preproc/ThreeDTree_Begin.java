import processing.core.*; 
import processing.xml.*; 

import processing.opengl.*; 

import java.applet.*; 
import java.awt.Dimension; 
import java.awt.Frame; 
import java.awt.event.MouseEvent; 
import java.awt.event.KeyEvent; 
import java.awt.event.FocusEvent; 
import java.awt.Image; 
import java.io.*; 
import java.net.*; 
import java.text.*; 
import java.util.*; 
import java.util.zip.*; 
import java.util.regex.*; 

public class ThreeDTree_Begin extends PApplet {




PFont font;
String message = "Lorem Ipsum Dolor Blah Lorem Ipsum Dolor Blah Lorem Ipsum Dolor BlahLorem Ipsum Dolor Blah";
char letters[];
int posnX;
int posnY;
public void setup() {
  size(800,800, OPENGL);
  posnX = width/2;
  posnY = height/2;
 // hint(ENABLE_DEPTH_SORT); 
  background(255);
  font = loadFont("Helvetica-Bold-48.vlw");
  textFont(font);

  smooth();
}

public void draw() {
   background(255);
 // line(
  //resetMatrix(); 
  //fill(255,40);
  //rect(0,0,width,height);
  //fill(0);
  int rotY = (int) mouseY % 360;
  int rotX = (int) mouseX % 360;
  pushMatrix();
  translate(posnX,posnY);
  letters = message.toCharArray();
   fill(0);
  for (int i = 0; i < letters.length; i++) {
    //pushMatrix();
      rotateY(radians(rotY));
      scale(0.985f);
      rotateX(radians(rotX));
      text(letters[i], 0, 0);
      translate(textWidth(letters[i]),0);
     // rotY += radians(35);
     // rotX += radians(1);
    //popMatrix(); 
  }
 // stroke(0);
 popMatrix();
  
}

public void mouseClicked() {
  posnX = mouseX;
  posnY = mouseY;
}
public void keyPressed(){
 
 switch(key) {
  
   case 's' : save("output." + (new java.util.Date()).getTime() + ".tif"); break;
   
  
 } 
 
  
}

    static public void main(String args[]) {
        PApplet.main(new String[] { "--bgcolor=#ECE9D8", "ThreeDTree_Begin" });
    }
}
