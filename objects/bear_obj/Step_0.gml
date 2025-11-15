
//if the bear falls below 0 health, it dies.
if (global.bear_health <= 0)
{
	instance_destroy(self);	
}