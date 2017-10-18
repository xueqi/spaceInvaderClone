/// @description draw messages
// 
draw_set_font(fntTest)
draw_set_color(c_black)
draw_set_alpha(1.0)

draw_text(800, 10, "Score: " + string(player_score))

if (instance_exists(objPlayer)) {
	draw_text(100, 10, "Life: " + string(objPlayer.hp))
} else {
	draw_text(100, 10, "Life: 0")
}

