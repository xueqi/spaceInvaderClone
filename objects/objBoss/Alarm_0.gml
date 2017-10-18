/// @description Fire bullet
// You can write your code in this editor

var bullet = instance_create_layer(x, y, "layerEnemy", objBullet);

with bullet {
	var img_idx = random_range(0, 5);
	direction = -90;
	speed = 4;
	image_index = img_idx;
	image_angle = -90;
	rotate_rate = 1;
	bid = 0;
}

alarm_set(0, 60)