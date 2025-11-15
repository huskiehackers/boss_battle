
//if the object explodes while touching the player,
//the player dies
if (sprite_index == explosion_spr)
{
	instance_destroy(player_obj);	
}