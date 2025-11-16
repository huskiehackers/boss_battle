


///////////////gravity
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



if (!grounded)
{
	y += vsp;	
}


//when the rock hits the ground, it simmers out
if (grounded)
{
	image_alpha -= (1 / 8);	
}

//once the rock fades to invisible, destroy it.
if (image_alpha <= 0)
{
	instance_destroy(self);	
}


