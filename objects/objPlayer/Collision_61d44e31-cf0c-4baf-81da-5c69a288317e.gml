/// @description Insert description here
// You can write your code in this editor
if (other.bid != 1) {
	with (other) {
		instance_destroy()
	}
	if shield_time <= 0 {
		hp--
		if (hp <= 0) {
			alarm_set(0, 1)
			audio_play_sound(sndExplode, 1, false)
		} else {
			// reset to initial position
			x = initial_position_x
			y = initial_position_y
			// add a shield 
			shield_time = 60
		}
	}
}