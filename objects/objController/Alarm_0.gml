/// @description spawn boss
// You can write your code in this editor


boss = instance_create_layer(0, 40, "layerEnemy", objBoss)

with boss {
	speed = 4;
	image_xscale = 0.5;
	image_yscale = 0.5;
	direction = 0;
}