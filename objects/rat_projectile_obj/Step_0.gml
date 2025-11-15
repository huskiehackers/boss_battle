

///////////////////gravity
vsp += grv;




////////////////////if the projectile hits the ground, turn it into a rat object
if (place_meeting(x + hsp * 2, y + vsp * 2, ground_obj))
{
	instance_create_layer(x + hsp, y + vsp, "rat_layer", rat_obj);
	instance_destroy(self);
	
}





////////////////process hsp and vsp
x += hsp;
y += vsp;