/// @description spawn level

// level is set before this alarm


instance_create_layer(0,0, "Instances", objSpawner);

if not instance_exists(objPlayer) {
	instance_create_layer(512, 700, "layerPlayer", objPlayer);
}

