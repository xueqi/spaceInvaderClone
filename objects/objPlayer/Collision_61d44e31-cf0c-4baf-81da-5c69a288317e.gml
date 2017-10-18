/// @description Insert description here
// You can write your code in this editor
if (other.bid != 1) {
	with (other) {
		instance_destroy()
	}
	hp--

	if (hp <= 0) {
		alarm_set(0, 1)
		audio_play_sound(sndExplode, 1, false)
	}
}