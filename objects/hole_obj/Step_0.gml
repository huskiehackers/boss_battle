


//if the hole is active, play the animation, spawn the rat
//and increment global.active_holes
if (active == true && already_activated == false)
{
	already_activated = true;
	sprite_index = holeWithRat;
	global.active_holes += 1
	
	
}

//animation is done, spawn rat
//and set hole inactive
if (sprite_index  == 6 && !already_deactivated)
{
		already_deactivated = true;
		active = false;
		already_activated = false;
		
		global.active_holes -= 1;
		sprite_index = holeWIthOutRat;
		instance_create_layer(x, 860, "rat_layer", rat_obj);
}