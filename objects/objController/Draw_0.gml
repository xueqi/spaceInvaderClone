/// @description draw messages
// 

if draw_final_score {
	draw_set_font(fntTest)
	draw_text(game_over_x,game_over_y, "Game Over")
	if (global.num_players == 2) 
		draw_text(final_score_x, final_score_y, "Final Score: \nPlayer1: " + string(player1_score) + "\nPlayer2: " + string(player2_score))
	else
		draw_text(final_score_x, final_score_y, "Final Score: " + string(player1_score) )

} else {
	draw_set_font(fntTest)
	draw_set_color(c_black)
	draw_set_alpha(1.0)
	if instance_exists(player1)
		draw_text(100, 10, "Score: " + string(player1.total_score))
	else
		draw_text(100, 10, "Score: " + string(player1_score))
	draw_text(400, 10, "Level: " + string(level))
	if (global.num_players == 2)
		if instance_exists(player2)
			draw_text(800, 10, "Score: " + string(player2.total_score))
		else
			draw_text(800, 10, "Score: " + string(player2_score))

	if (instance_exists(player1)) {
		draw_text(100, 720, "Life: " + string(player1.hp))
	} else {
		draw_text(100, 720, "Life: 0")
	}
	if (global.num_players == 2) {
		if (instance_exists(player2)) {
			draw_text(800, 720, "Life: " + string(player2.hp))
		} else {
			draw_text(800, 720, "Life: 0")
		}
	}
}