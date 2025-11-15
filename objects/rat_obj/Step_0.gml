key_interact = keyboard_check_pressed(ord("F"));

ran = random_range(1, 100);






/////////////Walking logic
if (walk_left)
{
	hsp -= move_speed;	
}
else
{
	hsp += move_speed;	
}










////////////////gravity
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
}

else
{
	grounded = false;
}



///////////////////pick up rat
if (key_interact && !global.hands_full)
{

	//check if the user is within range
	if ( distance_to_object(player_obj) <= global.interact_range && picked_up == false )
	{
		picked_up = true;
		global.hands_full = true;
		alarm[0] = 2
	}


	
}


if ( picked_up )
{
	x = player_obj.x + 2;
	y = player_obj.y - 4;
}


//////////////////////drop rat
if (picked_up && key_interact && can_be_thrown)
{
	
	
	
	
	
	picked_up = false;
	global.hands_full = false;
	can_be_thrown = false;
	
	//create projectile instance
	instance_create_layer(x, y, "Instances", rat_projectile_obj );
	
	//destroy current instance
	instance_destroy(self);
}


/////////////////process hsp and vsp
if (!picked_up)
{
x += hsp;
y += vsp;
}

