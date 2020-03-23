/// @description Insert description here
// You can write your code in this editor

//inventory drawn in upper left corner

var cellSize = 32;

draw_set_color(c_gray);
draw_set_alpha(0.7);

if(true) { // other statements (like room check, pause, etc).
	var startX = camera_get_view_x(view_camera[0]);
	var startY = camera_get_view_y(view_camera[0]);
	
	
	// drawing each of the 3 slots
	for(var xx = 0; xx < totalSlots; xx++) {
		draw_rectangle(startX + (xx * cellSize),startY,startX + ((xx + 1) * cellSize), startY + cellSize, true);
		draw_rectangle(startX + (xx * cellSize),startY,startX + ((xx + 1) * cellSize), startY + cellSize, false);
	}
}

draw_set_color(c_white);
draw_set_alpha(1);