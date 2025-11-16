

if (sprite_index == holeWithRat)
{

		already_deactivated = true;
		active = false;
		already_activated = false;
		
		global.active_holes -= 1;
		sprite_index = holeWIthOutRat;
		instance_create_layer(x, 860, "rat_layer", rat_obj);

	
}