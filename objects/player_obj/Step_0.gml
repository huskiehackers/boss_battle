key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check_pressed(ord("W"));
key_up_held = keyboard_check(ord("W"));
key_interact = keyboard_check_pressed(ord("F"));






////////////////////jump
if ( key_up == 1 and grounded == true)
{
	vsp += jump;	
}

if ( vsp < 0 and (!key_up_held) )
{
	vsp = max( vsp, jump / jump_mod)
}


///////////////gravity
vsp += grv;




////////////////max speed
vsp = clamp(vsp, -vsp_max, vsp_max);




////////////////vertical collision

if (place_meeting(x, y + vsp, ground_obj))
{
	
	while ( !place_meeting(x, y + sign(vsp), ground_obj))
	{
		y += sign(vsp);
	}
	
	grounded = true;
	vsp = 0;
}

else
{
	grounded = false;
}





if ( key_left )
{
	hsp -= move_speed;	
}

if ( key_right)
{
	hsp += move_speed;	
}









x += hsp;
y += vsp;


if (hsp == 0)
{
	sprite_index = cavemanIdle;
}
else
{
	sprite_index = cavemanWalking;
}

hsp = 0;