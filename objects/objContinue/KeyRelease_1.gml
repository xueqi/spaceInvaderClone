/// @description Insert description here
// You can write your code in this editor
if instance_exists(objController) {
	// this is from gameover/restart, delete objController
	with objController instance_destroy()
	room_goto(titleRoomSelectPlayer)
}