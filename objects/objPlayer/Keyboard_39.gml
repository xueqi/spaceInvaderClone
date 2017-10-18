/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x+hsp, y, objVBoundary)) {
	while (place_meeting(x+1, y, objVBoundary)) {
		x--;
	}
} else {
	x += hsp;
}
