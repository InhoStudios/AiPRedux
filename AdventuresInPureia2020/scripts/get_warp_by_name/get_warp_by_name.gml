///get_warp_by_name(String name);
var checkName = argument[0];
var inst = noone;

for(var i = 0; i < instance_number(o_warp); i++) {
	if(instance_find(o_warp, i).name == checkName) {
		inst = instance_find(o_warp, i);
		show_debug_message("Found instance with name " + checkName + " at ID " + string(inst));
		break;
	}
}

if(inst == noone) {
	show_debug_message("No instance found");
}

return inst;