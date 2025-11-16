

//when the timer goes off, the microwave is able to be picked up.
//and thrown

blinking = true;
sprite_index = microwaveWithRatBlink;
audio_stop_sound(microbuzz);
audio_play_sound(microbeep,0,false);

//Set alarm for microwave to explode
alarm[1] = 200;