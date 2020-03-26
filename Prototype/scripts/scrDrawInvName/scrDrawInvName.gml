var slot = argument[0];
var itemID = argument[1];
var dispName = "";

switch(itemID) {
	
	case Items.GENERIC:
		dispName = "Generic\n[Insert description here]";
		break;

}

draw_set_color(c_black);
draw_set_alpha(1);

if(itemID == ds_grid_get(inv, Inventory.SLOT_ID, slot)) {
	draw_text(mouse_x + 8, mouse_y + 8, dispName);
}