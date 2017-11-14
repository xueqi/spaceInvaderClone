level = 1
global.gamepad_id = -1
for (var i = 0; i < gamepad_get_device_count(); ++i) {
	if gamepad_is_connected(i) {
		global.gamepad_id = i;
		break;
	}
}

