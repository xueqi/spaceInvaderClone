/// @description Create enemy spawn and spawn enemy
// You can write your code in this editor

nrows = 2
ncols = 2
hspace = 10
vspace = 10
startLeft = 200
startTop = 100
pattern = [[1,1,1,1,1,1],[2,2,2,2,2,2], [3,3,3,3,3,3], [4,4,4,4,4,4],[5,5,5,5,5,5],[6,6,6,6,6,6]]

ENEMY_SPAWN = 0
level = 1

// spawn enemy. 
// before this, level could be set.
alarm_set(ENEMY_SPAWN, 1)