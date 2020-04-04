//inventory drawn in upper left corner

draw_set_color(c_gray);
draw_set_alpha(0.7);

if(true) { // other statements (like room check, pause, etc).
	var startX = camera_get_view_x(view_camera[0]);
	var startY = camera_get_view_y(view_camera[0]);
	
	var xCorner = 0;
	var yCorner = 0;
	
	// calculate cell width based on GUI
	// check vertical and horizontal
	var hScale = 1.0 * camera_get_view_width(view_camera[0])* (rCellSize / window_get_width());
	var vScale = 1.0 * camera_get_view_height(view_camera[0]) * (rCellSize / window_get_height());
	
	if(hScale < vScale) {
		cellSize = vScale;
	} else {
		cellSize = hScale;
	}
	
	cellSize = clamp(cellSize, minClamp, maxClamp);
	
	// drawing each of the 3 slots
	for(var i = 0; i < totalSlots; i++) {
		currentSlot = i;
		
		var xx = i * cellSize;
		
		// working new stuff
		
		draw_rectangle(xx,yCorner,xx + cellSize, yCorner + cellSize, false);
		
		if(slotHover - 1 == currentSlot) {
			draw_set_color(c_white);
			draw_set_alpha(0.5);
			draw_rectangle(xx,yCorner,xx + cellSize, yCorner + cellSize, false);
			draw_set_color(c_gray);
			draw_set_alpha(0.7);
		}
		
		inv_X[currentSlot] = xx;
		inv_X_relative[currentSlot] = startX + xx;
		inv_Y = yCorner;
		
		scrManageObjects(cellSize);
		
		draw_set_color(c_gray);
		draw_set_alpha(0.7);
	}
	
	// debug
	draw_text(xCorner, yCorner + cellSize, "slotTaken: " + string(slotTaken));
	draw_text(xCorner, yCorner + 1.5 * cellSize, "slotHover: " + string(slotHover));
	draw_text(xCorner, yCorner + 2 * cellSize, "slot1: " + string(ds_grid_get(inv, Inventory.SLOT_COUNT, 0)));
	draw_text(xCorner, yCorner + 2.5 * cellSize, "slot2: " + string(ds_grid_get(inv, Inventory.SLOT_COUNT, 1)));
	draw_text(xCorner, yCorner + 3 * cellSize, "slot3: " + string(ds_grid_get(inv, Inventory.SLOT_COUNT, 2)));
	draw_text(xCorner, yCorner + 3.5 * cellSize, "wH: " + string(window_get_height()));
	
	draw_circle(scrGetMouseXGUI(), scrGetMouseYGUI(), 3, false);
}

draw_set_color(c_white);
draw_set_alpha(1);