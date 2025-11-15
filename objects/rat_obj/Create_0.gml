move_speed = 3;
grv = 3;
grounded = false;
jump_mod = 250.5;
jump = -50;
vsp_max = 70;
hsp_max = 2;
hsp = 0;
vsp = 0;
can_change_direction = true;
walk_left = false;

ran_num = random_range(1, 10);
if (ran_num % 2 == 0)
{
	walk_left = true;	
}
else
{
	walk_left = false;	
}

alarm[1] = random_range(15, 200);




picked_up = false;
can_be_thrown = false;



