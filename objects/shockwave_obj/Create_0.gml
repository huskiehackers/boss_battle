//variables
hsp = -22;
hsp_max = 300;
can_damage = true;

//set an alarm to destroy this object for cleanup purposes
alarm[0] = 200;

//if bear is on left, flip sprite, and hsp
if (global.bear_on_right == false)
{
	
	hsp *= -1;
}
else
{
	image_xscale = -1;		
}

