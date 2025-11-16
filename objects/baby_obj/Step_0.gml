key_interact = keyboard_check_pressed(ord("F"));

ran = random_range(1, 100);


/////////////Walking logic

//while holding microwave, strafe right until edge
if (holding_microwave && x < bear_right_lim.x && !baby_on_right)
{
	hsp += move_speed;
}

//while holding microwave, strade left until edge
if (holding_microwave && x > bear_left_lim.x && baby_on_right)
{
	hsp -= move_speed;
}


if ( baby_on_right && x <= bear_left_lim.x )
{
	baby_on_right = false;
}

if (!baby_on_right && x >= bear_right_lim.x)
{
	baby_on_right = true;	
}



//player is on your left, run right
if (run_away && player_obj.x < x)
{
	hsp += move_speed
}

//player is on your right, run left
if (run_away && player_obj.x >= x)
{
	hsp -= move_speed
}




//walk left toward microwave
if (instance_exists(microwave_obj))
{
	if ( microwave_obj.x < x  && !holding_microwave && !run_away )
	{
		//move left
		hsp -= move_speed;	
		//sprite faces left
		image_xscale = -abs(image_xscale);
		
	}

	//walk right toward microwave
	else if (microwave_obj.x > x && !holding_microwave && !run_away )
	{
		//move right
		hsp += move_speed;	
		//sprite faces right
		image_xscale = abs(image_xscale);
		
	}

}

//baby picks up microwave when close enough

//outer if statement for debugging
if (instance_exists(microwave_obj))
{

	if ( distance_to_object(microwave_obj) < 2 && can_pickup  )
	{
	
		holding_microwave = true;
			if (holding_microwave)
			{
			
				microwave_obj.x = x;
				microwave_obj.y = y - 125;
	
				//mute microwaves gravity while baby is holding
				microwave_obj.grounded = true;
				microwave_obj.vsp = 0;
			
			
			}
	}

}







///////////////////////Detect collision from the top,
//////////////////////Drop the microwave and place baby in run mode
if (holding_microwave && distance_to_object(player_obj) < 5)
{
		//finds the angle in degrees between player and baby
		/////////////IMPORTANT NOTE: 
		/////////////If the drop mechanic isnt working properly, tweak the required value of the
		/////////////players vsp. This ensures the player gets a good fall going before hitting the
		//////////// baby, otherwise it behaves weirdly.
	if ( point_direction(x, y, player_obj.x, player_obj.y) > 45 && point_direction(x, y, player_obj.x, player_obj.y) < 135 && player_obj.vsp >= player_obj.vsp_max / 3 )
	{
		holding_microwave = false;
		can_pickup = false;
		run_away = true;
	}
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



//run off left border, delete self
if ( x < bear_left_lim.x - 50)
{
	//set alarm form when baby can spawn again
	bear_controller_obj.alarm[2] = random_range(500, 1000);
	instance_destroy(self);
}


//run off right border, delete self
if ( x > bear_right_lim.x + 50)
{
	//set alarm form when baby can spawn again
	bear_controller_obj.alarm[2] = random_range(500, 1000);
	instance_destroy(self);
}


/////////////////process hsp and vsp

x += hsp;
y += vsp;


