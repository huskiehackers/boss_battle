

num_rats = instance_number(rat_obj) - global.active_holes;


if (num_rats < max_rats && global.active_holes == 0)
{
	
	var inst = instance_find(hole_obj, irandom(instance_number(hole_obj) - 1));
	inst.active = true;
	
}