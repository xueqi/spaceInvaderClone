/// @description 

if btn_type == "level" {
	draw_set_font(fntButton)
	draw_set_color(color)
	draw_text(x,y,title)
}
else if btn_type == "controller" {
	if use_gamepad draw_text(x,y,"Use GamePad")
	else draw_text(x,y, "Use Keyboard")
}