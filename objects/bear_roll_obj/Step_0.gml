
if ( x > bear_left_lim)
{
	x -= 10;	
}

//bear goes back to normal
if ( x <= bear_left_lim)
{
	instance_create_layer(x, y, "Instances", bear_obj);
	global.bear_on_right = false;
	instance_destroy(self);
}