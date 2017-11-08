/// @description Fire

if (bulletCooldownCounter < 0) {
	var bullet = instance_create_layer(x, y, "layerPlayer", objBullet);
	audio_play_sound(sndFire,1, 0)
	with (bullet) {
		image_index = 2
		speed = other.bulletSpeed
		direction = 90
		bid = other.playerid
	}
	bulletCooldownCounter = bulletCooldown;
}

