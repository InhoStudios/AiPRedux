px = 0;
py = 0;
if(instance_exists(o_player)){
    px = o_player.x;
    py = o_player.y;
} else if(instance_exists(o_player_platformer)){
    px = o_player_platformer.x;
    py = o_player_platformer.y;
}

lenx = (px - x);
leny = (py - y);

x += 0.1*lenx;
y += 0.1*leny;

var scale = display_get_gui_height() / maxHeight;

__view_set( e__VW.WView, 0, display_get_gui_width() / scale );
__view_set( e__VW.HView, 0, display_get_gui_height() / scale );

__view_set( e__VW.XView, 0, x - (__view_get( e__VW.WView, 0 )/2) );
__view_set( e__VW.YView, 0, y - (__view_get( e__VW.HView, 0 )/2) );

