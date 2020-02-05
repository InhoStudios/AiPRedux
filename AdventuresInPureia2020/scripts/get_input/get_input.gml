key_left = keyboard_check(ord("A")) | keyboard_check(vk_left);
key_right = keyboard_check(ord("D")) | keyboard_check(vk_right);
key_up = keyboard_check(ord("W")) | keyboard_check(vk_up);
key_jump = keyboard_check_pressed(vk_space);
key_down = keyboard_check(ord("S")) | keyboard_check(vk_down);
key_attack = mouse_check_button_pressed(mb_left);
key_dash = keyboard_check_pressed(vk_shift);
key_interact = keyboard_check_pressed(ord("E"));
key_heal = keyboard_check_pressed(ord("Q"));

mouse_left = mouse_check_button(mb_left);
mouse_left_r = mouse_check_button_released(mb_left);
mouse_left_p = mouse_check_button_pressed(mb_left);

haxis = key_right - key_left;
vaxis = key_down - key_up;
