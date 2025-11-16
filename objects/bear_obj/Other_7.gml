

if(sprite_index == bearReleaseTheBabyStageTwo)
{
	sprite_index = StageTwo	
	
	instance_create_layer(x, y - 50, "rat_layer", baby_obj);
	global.baby_can_spawn = false;
	
	alarm[0] = 20;
}

if (sprite_index == bearReleaseTheBabyStageThree)
{
	sprite_index = StageThree	
	
	instance_create_layer(x, y - 50, "rat_layer", baby_obj);
	global.baby_can_spawn = false;
	
	alarm[0] = 20;
}