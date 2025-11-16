
//if the bear is attacking, set a cooldown
if (global.bear_attacking && alarm_0_set == false)
{
	
	//assign a random range between bear_cooldown_min, bear_cooldown_max
	alarm[0] = random_range(global.bear_cooldown_min, global.bear_cooldown_max);	
	alarm_0_set = true;
}



//track stages based on health
if (global.bear_health <= 1000)
{
	global.bear_stage = 2;	
	global.bear_cooldown_min = 350;
	global.bear_cooldown_max = 500;
}
if (global.bear_health <= 500)
{
	global.bear_cooldown_min = 250;
	global.bear_cooldown_max = 400;
	global.bear_stage = 3;	
}






//If the bear is on stage three, the volcano erupts
if (global.bear_stage == 3)
{
	global.eruption = true;	
}


if (global.eruption && !alarm_3_set)
{
	alarm[3] = random_range(150, 500)
	alarm_3_set = true;
}