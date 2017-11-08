/// @description Set level and play

color = c_gray
if btn_type == "level" {
	global.roomLevel = 0
	if title == "back"
		room_goto(titleRoomSelectPlayer)
	else if title == "quit"
		game_end()
	else if title == "help"
		room_goto(helpRoom)
	else {
		if title == "hard"
			global.roomLevel = 2
		else if title == "medium"
			global.roomLevel = 1
		else if title == "easy"
			global.roomLevel = 0 
		show_debug_message("roomLevel:" + string(global.roomLevel))
		show_debug_message("title: " + title)
		room_goto(gameRoom)
	}
}

else if btn_type == "controller" {
	global.use_gamepad = use_gamepad
	room_goto(titleRoom)
}