/// @description Main game logic
//

// check if enemy exists

if (enemy_spawned) {
	for (var i =  ds_list_size(enemies) - 1; i >= 0; --i) {
		var lst = enemies[| i];
		for (var j = ds_list_size(lst) - 1; j >= 0 ; --j) {
			if (! instance_exists(lst[| j])) {
				ds_list_delete(lst, j);
			}
		}
		if (ds_list_size(lst) == 0) {
			ds_list_delete(enemies, i);
		}
	}
	if (!instance_exists(objPlayer))  {
		alarm_set(GAME_OVER, 1)
	} else if (ds_list_size(enemies) > 0) {
		// spawn a bullet randomly
		var toFire = random_range(0, ds_list_size(enemies) * 200);
		// show_debug_message("toFire=" + string(toFire))
		if (toFire < ds_list_size(enemies)) {
			var lst = enemies[| toFire];
			var idx = ds_list_size(lst) - 1;
			with (lst[| idx]) {
				with(instance_create_layer(x, y, "layerEnemy", objBullet)) {
					direction = -90
					if  global.roomLevel == 2 {
						direction = point_direction(x, y, objPlayer.x, objPlayer.y)
						var rnd = irandom_range(0, 10) % global.num_players
						if (rnd == 0) 
							follow_player = objController.player1
						else
							follow_player = objController.player2
					}
					speed = objController.enemyBulletSpeed;
					image_index = other.image_index;
					image_angle = 180
					bid=0;
				}
			}
		}
	} else {
		enemy_spawned = false
		// spawn next level
		level++
		alarm_set(SPAWN_LEVEL, 45);
		// add one life
		alarm_set(ADD_PLAYER_LIFE, 1)
		enemyBulletSpeed++
	}
}

// spawn boss if boss is not there
if (boss > 0 and enemy_spawned) {
	if (! instance_exists(boss)) {
		boss = -1;
		alarm_set(0, 30)
	}
}