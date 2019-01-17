surface_free(global.shadows);
global.shadows = surface_create(room_width, room_height);
surface_set_target(global.shadows)

draw_sprite(spr_light,-1,mouse_x,mouse_y);

