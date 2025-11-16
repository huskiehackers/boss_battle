key_interact = keyboard_check_pressed(ord("F"));


///////////////mark that the microwave exists every gametick
//global.is_microwave = true;







//player is holding microwave
if (picked_up)
{
	//ground so that gravity doesnt affect
	grounded = true;
	
	x = player_obj.x - 5;
	y = player_obj.y - 150;
}


//gravity
vsp += grv;	



////////////////max speed
vsp = clamp(vsp, -vsp_max, vsp_max);
hsp = clamp (hsp, -hsp_max, hsp_max);




////////////////vertical collision
if (place_meeting(x, y + vsp, ground_obj))
{
	
	while ( !place_meeting(x, y + sign(vsp), ground_obj))
	{
		y += sign(vsp);
	}
	
	grounded = true;
	vsp = 0;
	hsp = 0;
}

else
{
	grounded = false;
}



//if the palyer is within range, holding a rat, and the microwave isnt full
//and the player presses F, change sprite
if (key_interact && distance_to_object(player_obj) < global.interact_range && global.holding_rat && !full)
{
	sprite_index = microwaveWithRat;
	full = true;
	global.holding_rat = false;
	global.hands_full = false;
	
	//alarm to be able to pickup the microwave
	alarm[4] = 10;
	
	//alarm to explode
	alarm[0] = 250;
}

//if the microwave is full, in range, and user interacts
if (key_interact && distance_to_object(player_obj) < global.interact_range && full && can_pickup)
{
	picked_up = true;
	can_throw = false;
	can_pickup = false;
	
	//alarm for when can be thrown
	alarm[3] = 5;
}



//if the microwave is full, and not already picked up
//the microwave can be picked up
if (full && !picked_up)
{
	can_pickup = true;
}




if (picked_up && key_interact && full && can_throw)
{
	picked_up = false;
	global.hands_full = false;
	if(player_obj.image_xscale>0){
		hsp = 25;
	} else {
		hsp = -25;
	}
	vsp = -45;
	can_throw = false;
}





if (!picked_up && !grounded && sprite_index != explosion_spr)
{
x += hsp;
y += vsp;
}
