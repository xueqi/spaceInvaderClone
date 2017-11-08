/// @description hitten by a bullet
// each time enemy is hitten, hp is decrease by the bullet power.

if (other.bid != 0) {
	with (other) {
		instance_destroy()
	}
	hp -= other.gunpower

	if (hp <= 0) {
		if other.bid == 1 and instance_exists(objController.player1) 
			objController.player1.total_score += killScore
		else if other.bid == 2 and instance_exists(objController.player2)
			objController.player2.total_score += killScore
		alarm_set(0, 1)
		alarm_set(2, 1)
		audio_play_sound(sndExplode, 1, false)
	} else {
		alarm_set(1, 1)
		// audio_play_sound(sndFire, 1, false)
	}
}