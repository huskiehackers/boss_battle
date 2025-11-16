
//if the bear is attacking, set a cooldown
if (global.bear_attacking && alarm_0_set == false)
{
	
	//assign a random range between 200, 500
	alarm[0] = random_range(200, 500);	
	alarm_0_set = true;
}