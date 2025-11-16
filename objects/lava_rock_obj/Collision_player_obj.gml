


////if the rock hits the player before it hits the ground,
//damage the player
if (!grounded && can_damage)
{
	global.player_health -= 1;
	can_damage = false;
}