/// @description Explode

// You can write your code in this editor


image_xscale *= 1.1
image_yscale *= 1.1
image_alpha -= 0.1

if explode_time < 0.1 {
	instance_destroy()
	if playerid == 1
		objController.player1_score = total_score
	else
		objController.player2_score = total_score
}
alarm_set(0, 2)