

//if the microwave is exploding, damage the bear
if (sprite_index == explosion_spr && damaged_bear = false)
{
	global.bear_health -= 100;
	bear_obj.image_blend = make_colour_rgb(200,0,0)
	alarm[5]=5
	damaged_bear = true;
}

