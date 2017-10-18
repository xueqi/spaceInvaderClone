/// @description 
// objController stays when game is playing

debug = true

// FOR ALARMS
SPAWN_BOSS = 0
DRAW_GAME_OVER_MESSAGE = 1
GAME_OVER = 2


// variables
level = 1


boss = -1;
draw_final_score = false
// create enemy spawner
enemy_spawned = false;
enemies = ds_list_create();
player_score = 0;
instance_create_layer(0,0, "Instances", objSpawner);

instance_create_layer(512, 700, "layerPlayer", objPlayer);
t = "12345"

// add boss 

alarm_set(0, 20)
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

