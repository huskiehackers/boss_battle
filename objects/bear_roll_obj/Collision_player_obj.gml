

//if the bear collides with the player,
//damage player and call an alarm before they
//can take damage again.

if (!has_damaged)
{
	global.player_health -= 1;
	global.can_take_dmg = false;
	has_damaged = true;
	
	//calls a cooldown before the player can take dmg again
	alarm[0] = 25;
	audio_play_sound(manhurt,0,false);
}


