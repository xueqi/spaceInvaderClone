/// @description 
// objController stays when game is playing

debug = true

// FOR ALARMS
SPAWN_BOSS = 0
DRAW_GAME_OVER_MESSAGE = 1
GAME_OVER = 2
SPAWN_LEVEL = 3
ADD_PLAYER_LIFE = 4
// variables

boss = -1;
draw_final_score = false
// create enemy spawner
enemy_spawned = false;
enemies = ds_list_create();

player1 = 0
player2 = 0
player1_score = 0;
player2_score = 0;
// level specific
level = 1
bossBulletSpeed = 4
enemyBulletSpeed = 2
enemySpeed = 1
roomLevel = 1

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

player1 = instance_create_layer(256, 700, "layerPlayer", objPlayer);
player1.playerid = 1
with player1 {
	image_blend = make_color_rgb(0, 0, 255)
}
if (global.num_players == 1) {
	player1.use_gamepad = global.use_gamepad
}
if global.num_players == 2 {
	player1.use_gamepad = false
	player2 = instance_create_layer(768, 700, "layerPlayer", objPlayer);
	player2.playerid = 2
	player2.use_gamepad = true;
	with player2 {
		image_blend = make_color_rgb(255, 0,0)
	}
}