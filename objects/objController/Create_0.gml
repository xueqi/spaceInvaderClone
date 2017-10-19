/// @description 
// objController stays when game is playing

debug = true

// FOR ALARMS
SPAWN_BOSS = 0
DRAW_GAME_OVER_MESSAGE = 1
GAME_OVER = 2
SPAWN_LEVEL = 3


// variables


boss = -1;
draw_final_score = false
// create enemy spawner
enemy_spawned = false;
enemies = ds_list_create();
player_score = 0;
// level specific
level = 1
bossBulletSpeed = 4
enemyBulletSpeed = 2
playerBulletSpeed = 4
playerhSpeed = 4


t = "12345"

// spawn first level
alarm_set(SPAWN_LEVEL, 1)

// add boss 
alarm_set(SPAWN_BOSS, 20)

// Play background audio
audio_play_sound(sndBackground, 0, true)

// set some coordinates

var width = window_get_width()
var height = window_get_height()

con_x = width / 2 - sprite_get_width(sprPressKey) / 2
con_y = height / 2 + 100

game_over_x = width / 2 - 120
game_over_y = height / 2 - 80

final_score_x = width / 2 - 120
final_score_y = height / 2

