/// @description Explode

// You can write your code in this editor


image_xscale *= 1.1
image_yscale *= 1.1
image_alpha -= 0.1

if image_alpha < 0.1 {
	instance_destroy()
}
alarm_set(0, 2)