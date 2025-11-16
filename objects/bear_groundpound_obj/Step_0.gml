

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

