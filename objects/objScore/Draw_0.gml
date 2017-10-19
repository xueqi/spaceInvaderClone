/// @description draw score on screen

draw_set_font(fntScore)
draw_set_color(c_aqua)
draw_set_alpha((elapse * 1.5) / duration)
draw_text(x,y,string(value))
draw_set_alpha(1)