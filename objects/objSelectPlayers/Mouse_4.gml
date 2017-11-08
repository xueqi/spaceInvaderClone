/// @description Set num players

color = c_gray
global.num_players = num_players
if num_players == 2 {
	room_goto(titleRoom)
} else {
	room_goto(titleRoomSelectController)
}