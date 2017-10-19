/// @description spawn boss
// You can write your code in this editor


boss = instance_create_layer(0, 40, "layerEnemy", objBoss)

with boss {
	speed = 4;
	image_xscale = 0.75;
	image_yscale = 0.75;
	direction = 0;
}