if (global.player_health <= 0)
{
    //instance_destroy(player_obj);
	player_obj.image_alpha = 0
	if(!death_alarm_set){
		alarm[0]=20
		death_alarm_set = true
		show_debug_message("dead")
	}
}

if(keyboard_check(ord("M"))){
	room_goto(WinRoom);
}

global.time_to_win++;