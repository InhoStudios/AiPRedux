zoom = 2;
maxZoom = 3;


idealWidth = 0;
idealHeight = 270;

//maxzoom
maxZoom = floor(display_get_width()/idealHeight);
minZoom = 0

aspectRatio = display_get_width()/display_get_height();

idealWidth = round(idealHeight*aspectRatio);

if idealWidth & 1{
	idealWidth++;
}


for(var i = 0; i<=room_last; i++)
{
	if(room_exists(i))
	{
		room_set_viewport(i,0,true,0,0,idealWidth,idealHeight);
		room_set_view_enabled(i,true);
		camera_set_view_size(objCamera,idealWidth*2,idealHeight*2)
	}
}
surface_resize(application_surface,idealWidth,idealHeight);
window_set_size(idealWidth,idealHeight);

room_goto(rmTesting);