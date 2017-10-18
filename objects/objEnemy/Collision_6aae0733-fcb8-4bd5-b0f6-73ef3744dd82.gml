/// @description hitten by a bullet
// each time enemy is hitten, hp is decrease by the bullet power.

if (other.bid != 0) {
	with (other) {
		instance_destroy()
	}
	hp -= other.gunpower

	if (hp <= 0) {
		objController.player_score += killScore
		alarm_set(0, 1)
		alarm_set(2, 1)
		audio_play_sound(sndExplode, 1, false)
	} else {
		alarm_set(1, 1)
		// audio_play_sound(sndFire, 1, false)
	}
}