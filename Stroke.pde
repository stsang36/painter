class Stroke {
	
	Stroke(int Thickness) {
		this.thickness = Thickness;
		this.remThick = Thickness;
	}
	
void display(x1 ,y1, x2, y2, x3, y3, y4){
	strokeWeight(this.thickness);
  line(x1, y1, x2, y2);
	if (mouseX > x1 && mouseX < x3){
		if (mouseY > y3 && mouseY < y4){
		this.thickness = 14;
			} else {
			this.thickness = this.remThick;
			} 
		}
	}	
}