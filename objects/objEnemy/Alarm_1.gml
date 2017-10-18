/// @description hitten
// Enemy get hitten


if image_xscale < 1.5 {
	image_xscale *= 1.1
	image_yscale *= 1.1
	image_blend = make_color_rgb(255, hp * 255 / maxHP, hp * 255 / maxHP)
}
