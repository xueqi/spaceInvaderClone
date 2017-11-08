/// @description Insert description here
// You can write your code in this editor
bulletCooldownCounter--
if shield_time >= 0  shield_time--

if shield_time >= 0 {
	image_index = 1
	image_alpha = 0.7
} else {
	image_index = 0
	if not to_be_destroied 
	image_alpha = 1
}
if to_be_destroied explode_time--;

var move_left = false
var move_right = false
var fire=false

if use_gamepad {
	if keyboard_check(ord("A")) move_left = true;
	else if keyboard_check(ord("D")) move_right = true;
	if keyboard_check(vk_space) fire = true;
//	if gamepad_button_check_pressed(gamepad_id, gp_padl) move_left = true;
//	else if gamepad_button_check_pressed(gamepad_id, gp_padr) move_right = true;
//	if gamepad_button_check_pressed(gamepad_id, gp_face1) fire = true;
}
else if use_keyboard {
	if keyboard_check(vk_left) move_left = true;
	else if keyboard_check(vk_right) move_right = true;
	if global.num_players == 1 {
		if keyboard_check(vk_space) fire = true;
	} else if global.num_players == 2 {
		if keyboard_check(vk_delete) fire = true;
		if keyboard_check(vk_numpad0) fire = true
	}
}
if move_left {
	if (place_meeting(x-hsp, y, objVBoundary)) {
		while (place_meeting(x-1, y, objVBoundary)) {
			x -= 1;
		}
	} else {
		x -= hsp;
	}
} else if move_right {
	if (place_meeting(x+hsp, y, objVBoundary)) {
		while (place_meeting(x+1, y, objVBoundary)) {
			x--;
		}
	} else {
		x += hsp;
	}
}
if fire alarm_set(FIRE, 1)