

//explosion logic
sprite_index = explosion_spr;
audio_stop_sound(microbeep);
audio_play_sound(explode,0,false);

//ground the object so that the explosion isnt affected by gravity
grounded = true;

//set alarm for cleanup
alarm[2] = 20;