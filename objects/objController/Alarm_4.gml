/// @description add player life

if (instance_exists(player1)) {
	with player1 {
		hp++
		hsp++
		bulletSpeed++
	}
}
if global.num_players == 2 {
	if (instance_exists(player2)) {
		with player2 {
			hp++
			hsp++
			bulletSpeed++
		}
	}
}