key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check_pressed(vk_space);
key_up_held = keyboard_check(vk_space);
key_interact = keyboard_check_pressed(ord("W"));




//when get hurt, change sprite flash red
if ( global.player_health == 2 && damaged1 == false )
{
	//change sprite, flash red
	sprite_index = manHurt;
	self.image_blend = make_colour_rgb(200,0,0)
	alarm[0] = 5;
	damaged1 = true;
	
		
}


//when get hurt, change sprite flash red
if ( global.player_health == 1 && damaged2 == false )
{
	//change sprite, flash red
	sprite_index = manHurt;
	self.image_blend = make_colour_rgb(200,0,0)
	alarm[0] = 5;
	damaged2 = true;
	
		
}



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





if ( key_left && x>10 )
{
	hsp -= move_speed;
	image_xscale = -abs(image_xscale);
}

if ( key_right && x<1910)
{
	hsp += move_speed;	
	image_xscale = abs(image_xscale);
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