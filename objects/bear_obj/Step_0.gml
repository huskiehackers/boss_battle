
//if the bear falls below 0 health, it dies.
if (global.bear_health <= 0)
{
	instance_destroy(self);	
}



//////update sprite for each stage
if (global.bear_stage == 1)
{
	sprite_index = StageOne;	
}

if (global.bear_stage == 2)
{
	sprite_index = StageTwo;
}

if (global.bear_stage == 3)
{
	sprite_index = StageThree;
}









if (!global.bear_attacking && can_attack == true)
{
		ran_num = irandom_range(1,2);
		
		
		
		if (ran_num == 1)
		{
			current_attack = 1;
		}
		
		if (ran_num == 2)
		{
			current_attack = 2;	
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



//Attack 2
if (current_attack == 2)
{
	//groundpound
	instance_create_layer(x, y, "Instances", bear_groundpound_obj);
	instance_destroy(self);

}





//release the baby 
if ( global.bear_stage >= 2 && global.baby_can_spawn)
{
	instance_create_layer(x, y - 50, "rat_layer", baby_obj);
	global.baby_can_spawn = false;
	
	
}


