/// @description draw_dialogue_box(string text);
/// @param string text
var txt = argument0

draw_set_colour(c_gray);
draw_set_alpha(0.8);
draw_rectangle(__view_get( e__VW.XView, 0 ) + 32, __view_get( e__VW.YView, 0 ) + (2 * __view_get( e__VW.HView, 0 ) / 3) - 8, __view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 ) - 32, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 ) - 32, false);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_font(fnt_text);
draw_text_ext(__view_get( e__VW.XView, 0 ) + 40, __view_get( e__VW.YView, 0 ) + (2 * __view_get( e__VW.HView, 0 ) / 3),string_hash_to_newline(txt),10,__view_get( e__VW.WView, 0 ) - 40 - 32);

draw_set_font(fnt_normal);
draw_set_colour(c_white);
draw_set_alpha(1);

