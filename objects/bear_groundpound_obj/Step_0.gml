

//if bear on left, flip scale
if (!global.bear_on_right)
{
	image_xscale = -1;
}


//at end of animation,
//spawn shockwave and delete this object,
//then create the regular bear again
if (image_index == 6)
{
	//if bear is on right, shockwave will spawn to the left of it
	//else, it will spawn on the right of it
	if (global.bear_on_right)
	{
		instance_create_layer(x - 30, y, "Instances", shockwave_obj)
	}
	else
	{
		instance_create_layer(x + 30, y, "Instances", shockwave_obj)
	}
	
	instance_create_layer(x, y, "Instances" , bear_obj)
	instance_destroy(self)
}


////////////////////bear jump
if ( !jumped )
{
	vsp += jump;	
	jumped = true;
}



///////////////gravity
if (!grounded)
vsp += grv;




////////////////max speed
vsp = clamp(vsp, -vsp_max, vsp_max);




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

///////////////gravity
vsp += grv;


if(!grounded)
y += vsp;