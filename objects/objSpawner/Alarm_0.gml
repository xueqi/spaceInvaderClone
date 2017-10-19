/// @description Spawn Enemy

show_debug_message("Spawning Enemies with ncols")
// reinitialize objController enemy array
with (objController) {
	enemy_spawned = false;
	// remove all enemies if exists
	var ncolsLeft = ds_list_size(enemies)
	if (ncolsLeft > 0) {
		for (var ind = ncolsLeft - 1; ind >= 0; --ind) {
			var enemyCol = enemies[| ind];
			var nEnemyCol = ds_list_size(enemyCol);
			for (var ind1 = 0; ind1 < nEnemyCol; ++ind1) {
				with enemyCol[| ind1] {
					instance_destroy()
				}
			}
			// delete the list
			ds_list_destroy(enemyCol)
		}
	}
}

// enemies is stored as array list
// each list contains a column of enemies. This is used to get the bottom enemy easily
// each row has same enemy
// bottom row has easiest enemy, which has hp 1
// top row has hardes enemy, which has hp 6

// get screen size
var windowWidth = window_get_width()
var windowHeight = window_get_height()
show_debug_message("display width: " + string(windowWidth) + ", height: " + string(windowHeight))
// get center of screen
var scrHCenter = windowWidth / 2
// set maxEnemies total width to 2/3 of screen size
var maxEnemyWidth = windowWidth * 2 / 3

// Calculate the total width of enemies
var initialWidth = (sprite_get_width(spEnemy) + hspace)* ncols - hspace
var scale = 1
// reduce the image size if enemies are too wide
if initialWidth > maxEnemyWidth {
	scale = maxEnemyWidth / initialWidth
	initialWidth = maxEnemyWidth
}
var swidth = sprite_get_width(spEnemy)
var sheight = sprite_get_height(spEnemy)
// set initial left
var x1 = scrHCenter - initialWidth / 2

for (var col = 0; col < ncols; ++col) {
	// start y1 is fixed. Modify startTop if needed
	var y1 = startTop;
	var lst = ds_list_create();
	objController.enemies[| col] = lst;
	for (var row = 0; row < nrows; ++row) {
		var enemy = instance_create_layer(x1, y1, "layerEnemy", objEnemy);
		// top Enemy has largest index
		enemy.image_index = nrows - 1 - row
		// enemy.image_blend = make_color_hsv(255,255,random(255))
		// give more score for hard enemy
		enemy.killScore = floor((nrows - row) * (1 + (level - 1) / 4))
		enemy.maxHP = floor((nrows-row) / 3) + 1
		enemy.hp = enemy.maxHP
		lst[| row] = enemy;
		y1 += (sheight + vspace) * scale;

		enemy.image_xscale = scale * 0.7
		enemy.image_yscale = scale * 0.7
		
	}
	
	x1 +=  (swidth + hspace) * scale;
}
objEnemy.hsp *=1.1

with (objController) {
	enemy_spawned = true;
}

instance_destroy()