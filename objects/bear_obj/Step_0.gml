
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
			attack_1();	
		}
		
		global.bear_attacking = true;
		can_attack = false;
		//set a timer before bear can attack again
		alarm[0] = 120;
}




//the function for the first attack
function attack_1()
{
	//if the bear is on the right,
	//move left
	if (x > bear_left_lim.x && bear_on_right)
	{
		x -= 50;	
	}
	
	//if the bear is on the left,
	//move right
	else if (x < bear_right_lim && !bear_on_right)
	{
		x += 50;	
	}
	
	
	
	//if the bear has reached the left side,
	//set bear_on_right false
	if (bear_on_right && x <= bear_left_lim )
	{
		bear_on_right = false;	
	}
	
	//if bear reacjed rigt side,
	//set bear_on_right true
	if (!bear_on_right && x >= bear_right_lim)
	{
		bear_on_right = true;	
	}
	
	
	
}
