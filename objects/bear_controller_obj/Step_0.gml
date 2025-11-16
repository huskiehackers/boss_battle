
//if the bear is attacking, set a cooldown
if (global.bear_attacking && alarm_0_set == false)
{
	alarm[0] = 200;	
	alarm_0_set = true;
}