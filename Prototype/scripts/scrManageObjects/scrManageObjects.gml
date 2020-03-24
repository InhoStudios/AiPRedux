var cellSize = argument[0];

/**debug**/

slotHover = 0;

/*********/

for(var i = 0; i < totalSlots; i++) {
	for(var it = 0; it < Items.TOTAL; it++) {
		scrDrawInvSprite(i, it);
	}
	// check hovering
	if(scrMouseOver(inv_X[i], inv_Y, cellSize, cellSize)) {
		if(mouse_check_button_pressed(mb_left)) {
			for(var j = 0; j < Items.TOTAL; j++) {
				scrClickSlot(i, j);
			}
		}
		for(var j = 0; j < Items.TOTAL; j++) {
			scrDrawInvName(i, j);
		}
		
		// debug
		/*******************************/
		slotHover = i + 1;
		/*******************************/
	}
	if(mouse_check_button_released(mb_left) && slotTaken > -1) {
		var startX = camera_get_view_x(view_camera[0]);
		var startY = camera_get_view_y(view_camera[0]);
		
		var width = cellSize * 3;
		var height = cellSize;
		
		for(var it = 0; it < Items.TOTAL; it++) { // it = item id
			if(!scrMouseOver(startX, startY, width, height)) {
				
			} else if(
					(ds_grid_get(inv, Inventory.SLOT_NAME, i) == itemName[Items.TOTAL] && ds_grid_get(inv, Inventory.SLOT_ID, i) == -1) ||
					(i != slotTaken && ds_grid_get(inv, Inventory.SLOT_NAME, i) == itemName[it] && ds_grid_get(inv, Inventory.SLOT_ID, i) == it)
				) 
			{
				if(scrMouseOver(inv_X[i], inv_Y, cellSize, cellSize)) {
					var tempSpr = spr;
					// transfer item
				}
			}
		}
	}
}

if(mouse_check_button(mb_left)) {
	draw_sprite(spr, 0, mouse_x - 3, mouse_y - 3);
}