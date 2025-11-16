
//if the bear falls below 0 health, it dies.
if (global.bear_health <= 0)
{
	instance_destroy(self);	
}

if (!global.bear_attacking && can_attack == true)
{
		ran_num = random_range(1,1);
		
		if (ran_num == 1)
		{
			current_attack = 1;
		}
		
		global.bear_attacking = true;
		can_attack = false;
		
}


//if bear on left, flip scale
if (!global.bear_on_right)
{
	image_xscale = -1;
}







//Atack 1
if (current_attack == 1)
{
	instance_create_layer(x, y, "Instances", bear_roll_obj);
	instance_destroy(self);
}



//release the baby 
if ( global.bear_stage >= 2 && global.baby_can_spawn)
{
	instance_create_layer(x, y - 50, "Instances", baby_obj);
	global.baby_can_spawn = false;
	
	
}


