if (global.player_health <= 0)
{
    instance_destroy(player_obj);
}

if(keyboard_check(ord("M"))){
	room_goto(WinRoom);
}