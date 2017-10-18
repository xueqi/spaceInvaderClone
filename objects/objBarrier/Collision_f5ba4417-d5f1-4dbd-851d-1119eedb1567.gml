/// @description Insert description here
// You can write your code in this editor

with (other) {
	instance_destroy()
}
hp--
image_alpha -= 1. / full_hp
if (hp <= 0) instance_destroy()
