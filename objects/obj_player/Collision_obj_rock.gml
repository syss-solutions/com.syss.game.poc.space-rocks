/// @description Player Collisions

if(powerup == 2) exit;

// Create a “firework” effect, with a medium size and white colour
effect_create_above(ef_firework, x, y, 1, c_white);

instance_destroy();

/* 
	Tell to obj_game to run its first alarm (Alarm 0) after 120 frames (two seconds). 
	In that event, we’ll restart the room.
*/
with(obj_game)
{
	alarm[0] = 120; // Alarm 0, configured into obj_game events.
}

audio_play_sound(snd_lose, 0, false);
