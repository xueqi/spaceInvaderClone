/// @description Insert description here
// You can write your code in this editor
bulletCooldownCounter--
if shield_time >= 0  shield_time--

if shield_time >= 0 {
	image_index = 1
	image_alpha = 0.7
} else {
	image_index = 0
	if not to_be_destroied 
	image_alpha = 1
}
if to_be_destroied explode_time--;