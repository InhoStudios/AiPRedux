if(keyboard_check_pressed(vk_up))
{
	zoom++;
	if zoom>maxZoom
		zoom = maxZoom;
	window_set_size(idealWidth*zoom, idealHeight*zoom);
	display_reset(0, false);
	alarm[0] = 1;
}

if(keyboard_check_pressed(vk_down))
{
	zoom--;
	if zoom<minZoom
		zoom = minZoom;
	window_set_size(idealWidth*zoom, idealHeight*zoom);
	display_reset(0, false);
	alarm[0] = 1;
}