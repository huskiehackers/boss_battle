

if (global.player_health <= 2 && hs3 != noone)
{
    hs3.visible = false;
}

if (global.player_health <= 1)
{
	hs2.visible = false;
}

if (global.player_health <= 0)
{
	hs3.visible = false;
    instance_destroy(player_obj);
}