float thickness = 4;
color mainColor;
color veryRed = color(255,0,0); 
color veryGreen = color(0,255,0);
color veryBlue = color(0,0,255); 
color yellow = color(247, 240, 0);
int whiteOut=1;
Button redButton;
Button blueButton;
Button yellowButton;
Stroke thinStroke;
Stroke thickStroke;

void setup() {
	size(window.innerWidth, window.innerHeight);
	background(255);
	mainColor = veryRed;
	redButton = new Button(veryRed);
	blueButton = new Button(veryBlue);
	greenButton = new Button(veryGreen);
	thinStroke = new Stroke(4);
	thickStroke = new Stroke(8);
}

void draw() {
	borders(0, height/2.5, width/6, height/1.5);
	fill(0);
	textSize((width/250)*(height/250));
	text("Colors:", width/150, height/1.16);
	text("Stroke Size:", width/150, height/1.4);
	text("ERASE EVERYTHING", width/150, height/1.8);
	text("Color Selected :", width/150, height/2.2);
	fill (mainColor);
	if (mainColor == veryRed) {
		text("RED", width/150, height/2);
	} else if (mainColor == veryBlue) {
		text ("BLUE",  width/150, height/2);
	} else if (mainColor == veryGreen) {
		text ("GREEN",  width/150, height/2);
	}  else if (mainColor == 255) {
		text ("ERASER",  width/150, height/2); 
	} else {
		fill(0);
		text ("UNKNOWN",  width/150, height/2);
	} 
	fill (0);
	if (thickness == 4) {
		text("<-----", width*0.09, height*0.776);
	} else if (thickness == 8) {
		text("<-----", width*0.09, height*0.81);
	} else {
		textSize ((width/350)*(height/350));
		text("Cannot Change in ERASER mode!", width*0.072, height*0.75, 100,100);
	}
	
	textSize((width/300)*(height/300));
	text("(Or press SHIFT to use eraser)", width/150, height/1.72);
	smooth();
	stroke(0);
	strokeWeight(whiteOut);
	fill(255);
	rect(width*0.045, height*0.59, width*0.03, height*0.07 );
  redButton.display(width*0.006, height*0.892, width*0.03, height*0.07, width*0.037 ,height*0.965 );
	blueButton.display(width*0.045, height*0.892, width*0.03, height*0.07, width*0.0756 ,height*0.965 );
	greenButton.display(width*0.084, height*0.892, width*0.03, height*0.07, width*0.115 ,height*0.965 );
	thinStroke.display(width*0.025, height*0.769, width*0.06, height*0.769,width*0.063, height*0.762, height*0.775);
	thickStroke.display(width*0.025, height*0.8, width*0.06, height*0.8 ,width*0.063, height*0.79,  height*0.82  );
  strokeWeight(1);
	fill (yellow);
	noStroke();
	rect(5, 5, 150, 40 );
	fill (0);
		textSize(20);
	text(mouseX + "px, " + mouseY + "px", 20, 30);
	if (mouseX > width*0.045 && mouseX < width*0.0756) {
		if (mouseY > height*0.59 && mouseY < height*0.66){
			whiteOut = 10;
		} else {
			whiteOut = 1; 
		}
	}
}

void borders( x, y, sizeX, sizeY ) {
		fill(yellow);
	noStroke()
	rect( x, y, sizeX, sizeY);
}

void mouseClicked() {
	// clicked on thin line
	if (mouseX > width*0.045 && mouseX < width*0.0756) {
		if (mouseY > height*0.59 && mouseY < height*0.66){
		fill(yellow);
     rect(width/2.09, height/2.1, 150, 40 );
			fill(0);
			text("Please wait...", width/2, height/2);
  setTimeout(function(){ background(255); }, 500);

		}
	}
	if (thickness != 20) {
			if (mouseX > width*0.025 && mouseX < width*0.063){
		if (mouseY > height*0.762 && mouseY < height*0.775){
			thickness = 4;
		}
		if (mouseY > height*0.79 && mouseY < height*0.82) {
			thickness = 8;  
		}
	}
	}
	// clicked on red
	if (mouseX > width*0.006 && mouseX < width*0.037) {
			if (mouseY > height*0.892 && mouseY < height*0.965){
				mainColor = veryRed;
				if (thickness == 20) {
					thickness = 4;
				}
		}
	}
	// clicked on blue
		if (mouseX > width*0.045 && mouseX < width*0.0756) {
			if (mouseY > height*0.892 && mouseY < height*0.965) {
				mainColor = veryBlue;
				if (thickness == 20) {
					thickness = 4;
				}
		}
	}
		// clicked on green
		if (mouseX > width*0.084 && mouseX < width*0.115) {
			if (mouseY > height*0.892 && mouseY < height*0.965) {
				mainColor = veryGreen;
				if (thickness == 20) {
					thickness = 4;
				}
		}
	}
}
void mouseDragged(){
	 stroke(mainColor); strokeWeight(thickness);
	line(mouseX, mouseY,pmouseX,pmouseY);
}

void keyPressed() {
	  if (keyCode == SHIFT){
			mainColor = 255;
				thickness = 20;
		}
}