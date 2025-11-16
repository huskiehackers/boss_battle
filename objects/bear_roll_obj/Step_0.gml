


//move left if right
if ( x >= bear_left_lim.x && global.bear_on_right)
{
	x -= roll_speed;	
}

//move right if left
if (x <= bear_right_lim.x && !global.bear_on_right)
{
	x += roll_speed;
}

//bear goes back to normal
if ( distance_to_object(bear_left_lim) < 2 && global.bear_on_right)
{
	instance_create_layer(x, y, "Instances", bear_obj);
	global.bear_on_right = false;
	instance_destroy(self);
}


//bear goes back to normal
if ( distance_to_object(bear_right_lim) < 2 && !global.bear_on_right)
{
	instance_create_layer(x, y, "Instances", bear_obj);
	global.bear_on_right = true;
	instance_destroy(self);
}