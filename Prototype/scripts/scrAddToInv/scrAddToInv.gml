var inventory = objInventory;
var itemID = argument[0];
var value = argument[1];

for(var i = 0; i < inventory.totalSlots; i++ ){
	
	// add stackable item to inventory to a new stack
	if(itemStackable[itemID]) {
		if((ds_grid_get(inventory.inv, Inventory.SLOT_ID, i) == itemID &&
			ds_grid_get(inventory.inv, Inventory.SLOT_COUNT, i) < maxItemStack) ||
			(ds_grid_get(inventory.inv, Inventory.SLOT_ID, i) == -1 && 
			ds_grid_get(inventory.inv, Inventory.SLOT_NAME, i) == itemName[Items.TOTAL])
		) {
			
			ds_grid_set(inventory.inv, Inventory.SLOT_ID, i, itemID);
			ds_grid_set(inventory.inv, Inventory.SLOT_NAME, i, itemName[itemID]);
			
			while(value > 0 && ds_grid_get(inventory.inv, Inventory.SLOT_COUNT, i) < maxItemStack) {
				
				scrAddList(itemID);
				
				var increment = ds_grid_get(inventory.inv, Inventory.SLOT_COUNT, i) + 1;
				show_debug_message("count of slot:" + string(increment));
				ds_grid_set(inventory.inv, Inventory.SLOT_COUNT, i, increment);
				
				value--;
			}
			
			if(value <= 0) break;
			
		}
	}
	
	// if we're at the last slot, cycle through to see if there are empty slots in the beginning
	if(i == inventory.totalSlots - 1) {
		// cycle through every slot
		for(var j = 0; j < inventory.totalSlots; j++) {
			// check for an empty slot with ID of -1
			if(ds_grid_get(inventory.inv, Inventory.SLOT_ID, j) == -1) {
				// set ID and Name to the ID and Name of picked up item
				ds_grid_set(inventory.inv, Inventory.SLOT_ID, j, itemID);
				ds_grid_set(inventory.inv, Inventory.SLOT_NAME, j, itemName[itemID]);
				// loop through and add values
				while(value > 0 && ds_grid_get(inventory.inv, Inventory.SLOT_COUNT, i) < maxItemStack) {
					
					scrAddList(itemID);
					
					var increment = ds_grid_get(inventory.inv, Inventory.SLOT_COUNT, i) + 1;
					show_debug_message("count of slot:" + string(increment));
					ds_grid_set(inventory.inv, Inventory.SLOT_COUNT, i, increment);
					
					value--;
				}
				break;
			}
		}
	}
}

if(value <= 0) instance_destroy();