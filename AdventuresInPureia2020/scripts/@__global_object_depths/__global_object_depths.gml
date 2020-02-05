// Initialise the global array that allows the lookup of the depth of a given object
// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
// NOTE: MacroExpansion is used to insert the array initialisation at import time
gml_pragma( "global", "__global_object_depths()");

// insert the generated arrays here
global.__objectDepths[0] = 0; // o_entity
global.__objectDepths[1] = 0; // o_player
global.__objectDepths[2] = 0; // o_player_platformer
global.__objectDepths[3] = -10001; // o_player_stats
global.__objectDepths[4] = 0; // o_tseint_body
global.__objectDepths[5] = 0; // o_elf
global.__objectDepths[6] = 0; // o_tseint_wings
global.__objectDepths[7] = 0; // o_enemy_parent
global.__objectDepths[8] = 0; // o_aerial_enemy
global.__objectDepths[9] = 0; // o_npc_interaction
global.__objectDepths[10] = 0; // o_tester_npc
global.__objectDepths[11] = 0; // o_damage
global.__objectDepths[12] = 0; // o_arrow
global.__objectDepths[13] = -10000; // o_interactable
global.__objectDepths[14] = 0; // o_pickup_parent
global.__objectDepths[15] = 0; // o_item_parent
global.__objectDepths[16] = 0; // o_xp_orb
global.__objectDepths[17] = 0; // o_health_pot
global.__objectDepths[18] = 0; // o_aeris
global.__objectDepths[19] = 0; // input
global.__objectDepths[20] = 0; // game
global.__objectDepths[21] = 0; // view
global.__objectDepths[22] = -10002; // inventory
global.__objectDepths[23] = 0; // lighting
global.__objectDepths[24] = 0; // o_menu_play_button
global.__objectDepths[25] = 0; // o_pause
global.__objectDepths[26] = 0; // o_tavern
global.__objectDepths[27] = 0; // o_save
global.__objectDepths[28] = 0; // o_load
global.__objectDepths[29] = 0; // o_solid
global.__objectDepths[30] = 0; // o_aerial_obstacle
global.__objectDepths[31] = 0; // o_warp


global.__objectNames[0] = "o_entity";
global.__objectNames[1] = "o_player";
global.__objectNames[2] = "o_player_platformer";
global.__objectNames[3] = "o_player_stats";
global.__objectNames[4] = "o_tseint_body";
global.__objectNames[5] = "o_elf";
global.__objectNames[6] = "o_tseint_wings";
global.__objectNames[7] = "o_enemy_parent";
global.__objectNames[8] = "o_aerial_enemy";
global.__objectNames[9] = "o_npc_interaction";
global.__objectNames[10] = "o_tester_npc";
global.__objectNames[11] = "o_damage";
global.__objectNames[12] = "o_arrow";
global.__objectNames[13] = "o_interactable";
global.__objectNames[14] = "o_pickup_parent";
global.__objectNames[15] = "o_item_parent";
global.__objectNames[16] = "o_xp_orb";
global.__objectNames[17] = "o_health_pot";
global.__objectNames[18] = "o_aeris";
global.__objectNames[19] = "input";
global.__objectNames[20] = "game";
global.__objectNames[21] = "view";
global.__objectNames[22] = "inventory";
global.__objectNames[23] = "lighting";
global.__objectNames[24] = "o_menu_play_button";
global.__objectNames[25] = "o_pause";
global.__objectNames[26] = "o_tavern";
global.__objectNames[27] = "o_save";
global.__objectNames[28] = "o_load";
global.__objectNames[29] = "o_solid";
global.__objectNames[30] = "o_aerial_obstacle";
global.__objectNames[31] = "o_warp";


// create another array that has the correct entries
var len = array_length_1d(global.__objectDepths);
global.__objectID2Depth = [];
for( var i=0; i<len; ++i ) {
	var objID = asset_get_index( global.__objectNames[i] );
	if (objID >= 0) {
		global.__objectID2Depth[ objID ] = global.__objectDepths[i];
	} // end if
} // end for