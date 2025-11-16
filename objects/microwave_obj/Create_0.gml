

//////////initalize sprite size
image_xscale = 2;
image_yscale = 2;


global.is_microwave = true;

//set sprite to microwave spawn
sprite_index = microwaveSpawn;


grv = 3;
grounded = false;
jump_mod = 250.5;
jump = -50;
vsp_max = 70;
hsp_max = 100;
hsp = 0;
vsp = 0;



////////////Spawn the microwave at a random x value within a range
x = random_range(400, 1300);





has_damaged = false;
full = false;
blinking = false;
can_pickup = false;
can_throw = false;
picked_up = false;
damaged_bear = false;


