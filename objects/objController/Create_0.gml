/// @description 
// objController stays when game is playing

debug = true

// remove the title page
instance_destroy(objTitle);
instance_destroy(objContinue);
instance_destroy(objbg1)
boss = -1;
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