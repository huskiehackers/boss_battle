
//if the object explodes while touching the player,
//the player dies
if (sprite_index == explosion_spr && has_damaged == false)
{
	global.player_health -= 1;	
	has_damaged = true;
	alarm[6] = 30;
	audio_play_sound(manhurt,0,false);
}