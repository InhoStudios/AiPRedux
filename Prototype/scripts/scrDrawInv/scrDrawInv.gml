//inventory drawn in upper left corner

draw_set_color(c_gray);
draw_set_alpha(0.7);

if(true) { // other statements (like room check, pause, etc).
	var startX = camera_get_view_x(view_camera[0]);
	var startY = camera_get_view_y(view_camera[0]);
	
	
	// drawing each of the 3 slots
	for(var i = 0; i < totalSlots; i++) {
		currentSlot = i;
		
		var xx = startX + (i * cellSize);
		
		draw_rectangle(xx,startY,xx + cellSize, startY + cellSize, false);
		
		if(slotHover - 1 == currentSlot) {
			draw_set_color(c_white);
			draw_set_alpha(0.5);
			draw_rectangle(xx,startY,xx + cellSize, startY + cellSize, false);
			draw_set_color(c_gray);
			draw_set_alpha(0.7);
		}
		
		draw_rectangle(xx,startY,xx + cellSize, startY + cellSize, true);
		
		inv_X[currentSlot] = xx;
		inv_Y = startY;
		
		scrManageObjects(cellSize);
		
		draw_set_color(c_gray);
		draw_set_alpha(0.7);
	}
	
	// debug
	draw_text(startX, startY + cellSize, string(inv_X[0]));
	draw_text(startX, startY + 1.5 * cellSize, string(inv_X[1]));
	draw_text(startX, startY + 2 * cellSize, string(inv_X[2]));
	draw_text(startX, startY + 2.5 * cellSize, string(inv_Y));
	draw_text(startX, startY + 3 * cellSize, string(slotHover));
}

draw_set_color(c_white);
draw_set_alpha(1);