

//if there is no microwave, spawn another




if (!global.is_microwave)
{
	instance_create_layer(x, y, "rat_layer", microwave_obj);
	global.is_microwave = true;
	
}

