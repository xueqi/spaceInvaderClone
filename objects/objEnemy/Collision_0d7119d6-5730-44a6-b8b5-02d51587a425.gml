/// @description Insert description here
// You can write your code in this editor

if (other.bid==1) {
	if (objEnemy.hsp >= 0) {
		objEnemy.hsp = -objEnemy.hsp;
		objEnemy.vsp = originVsp;
	}
} else if (other.bid == 0) {
	if (objEnemy.hsp <= 0) {
		objEnemy.hsp = -objEnemy.hsp;
		objEnemy.vsp = originVsp;
	}
}