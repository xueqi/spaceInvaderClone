/// @description draw messages
// 

if draw_final_score {
	draw_set_font(fntTest)
	draw_text(game_over_x,game_over_y, "Game Over")
	draw_text(final_score_x, final_score_y, "Final Score: " + string(player_score))
} else {
	draw_set_font(fntTest)
	draw_set_color(c_black)
	draw_set_alpha(1.0)

	draw_text(800, 10, "Score: " + string(player_score))
	draw_text(400, 10, "Level: " + string(level))
	if (instance_exists(objPlayer)) {
		draw_text(100, 10, "Life: " + string(objPlayer.hp))
	} else {
		draw_text(100, 10, "Life: 0")
	}

}