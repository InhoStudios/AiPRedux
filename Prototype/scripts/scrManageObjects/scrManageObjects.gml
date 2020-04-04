var cellSize = argument[0];

/**debug**/

slotHover = -1;

/*********/

for(var i = 0; i < totalSlots; i++) {
	for(var it = 0; it < Items.TOTAL; it++) {
		scrDrawInvSprite(i, it);
	}
	// check hovering
	var startY = camera_get_view_y(view_camera[0]);
	if(scrMouseOver(inv_X_relative[i], startY, cellSize, cellSize)) {
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
				var tempSpr = spr;
				scrReleaseSlot(it);
			} else if(
					(ds_grid_get(inv, Inventory.SLOT_NAME, i) == itemName[Items.TOTAL] && ds_grid_get(inv, Inventory.SLOT_ID, i) == -1) ||
					(i != slotTaken && ds_grid_get(inv, Inventory.SLOT_NAME, i) == itemName[it] && ds_grid_get(inv, Inventory.SLOT_ID, i) == it)
				) 
			{
				if(scrMouseOver(inv_X_relative[i], startY, cellSize, cellSize)) {
					var tempSpr = spr;
					scrTransferItem(i, it, tempSpr);
				}
			}
		}
	}
}

if(mouse_check_button(mb_left)) {
	var scale = cellSize / sprite_width;
	draw_sprite_ext(spr, 0, scrGetMouseXGUI(), scrGetMouseYGUI(), scale, scale, 0, c_white, 1);
}
if(!mouse_check_button(mb_left)) slotTaken = -1;