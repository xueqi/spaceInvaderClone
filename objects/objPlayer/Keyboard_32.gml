/// @description Insert description here
// You can write your code in this editor

if (bulletCooldown < 0) {
	var bullet = instance_create_layer(x, y, "layerPlayer", objBullet);

	with (bullet) {
		image_index = 2
		speed = 10
		direction = 90
		bid = 1
	}
	bulletCooldown = 20;
}

