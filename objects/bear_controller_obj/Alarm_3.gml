

//////this alarm handles lavarock spawns



///////random x value between max and min
x_spawn = random_range(120, 1600)

instance_create_layer(x_spawn, 0, "lava_rock_layer", lava_rock_obj);

alarm_3_set = false;