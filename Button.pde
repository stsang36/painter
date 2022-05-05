class Button {
color myColor;
int hover =1;

Button(color myColor) {
	this.color = myColor
}

void display(int x, y, x1, y2, x3, y3) {
	strokeWeight(hover);
  fill(this.color);
  rect(x, y, x1, y2 );
	if (mouseY > y && mouseY < y3) {
		if (mouseX > x && mouseX < x3) {
 			hover = 10;
		}else {
			hover= 1;
			}
		}
	}
}