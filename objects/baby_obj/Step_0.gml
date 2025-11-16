key_interact = keyboard_check_pressed(ord("F"));

ran = random_range(1, 100);


/////////////Walking logic

//player is on the left, run right
if (holding_microwave && x < bear_right_lim.x && !baby_on_right)
{
	hsp += move_speed;
}

//player is on the right, run left
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



//walk left toward microwave
if (instance_exists(microwave_obj))
{
	if ( microwave_obj.x < x  && !holding_microwave)
	{
		//move left
		hsp -= move_speed;	
		//sprite faces left
		image_xscale = -abs(image_xscale);
	}

	//walk right toward microwave
	else if (microwave_obj.x > x && !holding_microwave)
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

	if ( distance_to_object(microwave_obj) < 2  )
	{
	
		holding_microwave = true;
		microwave_obj.x = x;
		microwave_obj.y = y - 125;
	
		//mute microwaves gravity while baby is holding
		microwave_obj.grv = 0;
	}

}

//when the baby leaves the screen, set a timer before
//deleting the microwave.
//then delete the baby











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







/////////////////process hsp and vsp
if (!picked_up)
{
x += hsp;
y += vsp;
}

