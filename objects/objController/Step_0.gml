/// @description Insert description here
// You can write your code in this editor

// check if enemy exists
if (enemy_spawned) {
	for (var i =  ds_list_size(enemies) - 1; i >= 0; --i) {
		var lst = enemies[| i];
		for (var j = ds_list_size(lst) - 1; j >= 0 ; --j) {
			if (! instance_exists(lst[| j])) {
				ds_list_delete(lst, j);
				player_score++;
			}
		}
		if (ds_list_size(lst) == 0) {
			ds_list_delete(enemies, i);
		}
	}
	if (!instance_exists(objPlayer))  {
		game_restart()
	}
	if (ds_list_size(enemies) > 0) {
		// spawn a bullet randomly
		var toFire = random_range(1, 200);
		if (toFire < ds_list_size(enemies)) {
			var lst = enemies[| toFire];
			var idx = ds_list_size(lst) - 1;
			with (lst[| idx]) {
				with(instance_create_layer(x, y, "layerEnemy", objBullet)) {
					direction = point_direction(x, y, objPlayer.x, objPlayer.y)
					speed=4;
					image_index = other.image_index;
					image_angle = 180
					bid=0;
				}
			}
		}
	} else {
		enemy_spawned = false
		// game_restart()
	}
}

// spawn boss if boss is not there
if (boss > 0) {
	if (! instance_exists(boss)) {
		boss = -1;
		alarm_set(0, 30)
	}
}