/// @description game over

// show the score sceen
draw_final_score = true
// stop all enemies
objEnemy.hsp = 0
enemy_spawned = false // this stop the boss spawn

// add continue button

instance_create_layer(con_x, con_y, "layerControl", objContinue)