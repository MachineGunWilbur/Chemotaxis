Bacteria[] woah;
 void setup(){     
 	size(500,500);
 	woah = new Bacteria[100];
 	for(int i = 0; i < woah.length; i++){
 		woah[i] = new Bacteria();
 	}
 }   
 void draw(){
 	background(0,255,0);    
 	for(int i = 0; i < stuff.length; i++){
 		stuff[i].show();
 		stuff[i].move();
 	}
 }
 void mousePressed(){
 	redraw();
 }  
 class Bacteria    
 {     
 	int myX, myY, myColor, mySize;

 	Bacteria(){
 		myX = 100;
 		myY = 50;
 		mySize = (int)(Math.random() * 30) + 1;
 		myColor = (int)(Math.random() * 254) + 1;
 		move();
 	}
 	void move(){
 		if(mouseX < myX){
 			myX = myX + (int)(Math.random() * 11) - 7;
 		} else {
 			myX = myX + (int)(Math.random() * 13) + 7;
 		}

 		if(mouseY < myY){
 			myY = myY + (int)(Math.random() * 11) - 7;
 		} else {
 			myY = myY + (int)(Math.random() * 13) + 7;	
 		}
 	}
 	void show(){
 		fill(myColor, myColor, myColor, myColor);
 		ellipse(myX, myY, mySize, mySize);
 	}
 }    
