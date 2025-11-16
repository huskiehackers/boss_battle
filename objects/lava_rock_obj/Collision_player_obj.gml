


////if the rock hits the player before it hits the ground,
//damage the player
if (!grounded && can_damage)
{
	global.player_health -= 1;
	can_damage = false;
	audio_play_sound(manhurt,0,false);
}