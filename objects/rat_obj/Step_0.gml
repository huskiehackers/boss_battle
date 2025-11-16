key_interact = keyboard_check_pressed(ord("W"));

ran = random_range(1, 100);




if (x < -30 || x >1920)
{
	instance_destroy(self);
}

/////////////Walking logic
if (walk_left && distance_to_object(bear_left_lim > 200))
{
	//move left
	hsp -= move_speed;	
	//sprite faces left
	image_xscale = -abs(image_xscale);
}
else if (!walk_left && distance_to_object(bear_right_lim) > 200 )
{
	//move right
	hsp += move_speed;	
	//sprite faces right
	image_xscale = abs(image_xscale);
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
		//if the microwave exists, check that the player is not in range of it it
		if ( instance_exists(microwave_obj && instance_exists(player_obj)) )
		{
			if ( point_distance(microwave_obj.x, microwave_obj.y, player_obj.x, player_obj.y) > global.interact_range )	
			{
				picked_up = true;
				image_speed = 0;
				global.hands_full = true;
				global.holding_rat = true;
				alarm[0] = 2
			}
		}
		
		else
		{
			
			
			
			
			picked_up = true;
			image_speed = 0;
			global.hands_full = true;
			global.holding_rat = true;
			alarm[0] = 2
			
			
			
			
		}
	}
		
		
}


	



if ( picked_up )
{
	x = player_obj.x + 8;
	y = player_obj.y - 50;
}


//////////////////////drop rat
if (picked_up && key_interact && can_be_thrown && distance_to_object(microwave_obj) >  global.interact_range)
{
	
	
	
	
	
	picked_up = false;
	global.hands_full = false;
	global.holding_rat = false;
	can_be_thrown = false;
	
	//create projectile instance
	instance_create_layer(x, y, "rat_layer", rat_projectile_obj );
	
	//destroy current instance
	instance_destroy(self);
}


/////////////////process hsp and vsp
if (!picked_up)
{
x += hsp;
y += vsp;
}

