/// @description Create enemy spawn and spawn enemy
// You can write your code in this editor

nrows = 6
ncols = 6
hspace = 30
vspace = 30
startLeft = 200
startTop = 100
pattern = [[1,1,1,1,1,1],[2,2,2,2,2,2], [3,3,3,3,3,3], [4,4,4,4,4,4],[5,5,5,5,5,5],[6,6,6,6,6,6]]

ENEMY_SPAWN = 0

// spawn enemy. 
// before this, level could be set.
showLevel = true
alarm_set(ENEMY_SPAWN, 60)

for (var i = 0; i <  gamepad_get_device_count(); ++i) 
	if gamepad_is_connected(i) {
		objController.gamepad_id = i;
		break;
	}
	