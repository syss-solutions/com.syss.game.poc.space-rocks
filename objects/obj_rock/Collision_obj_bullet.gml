/// @description Bullet Collision

if(obj_game.powerup_time < 0)
{
	var _obj = choose(obj_powerup_spread, obj_powerup_ghost);
	instance_create_layer(x, y, "Instances", _obj);
	obj_game.powerup_time = 20;
}

audio_play_sound(snd_rockdestroy, 0, false, 1, 0, random_range(0.6, 1.1));

// Increase the points
obj_game.points += 50;

// Destroy the bullet (the "other")
instance_destroy(other);

// Create the explosion effect
effect_create_above(ef_explosion, x, y, 1, c_white);

direction = random(360);

if sprite_index == spr_rock_big
{
	sprite_index = spr_rock_small;
	// The instance is then copied so we get two small rocks.
    instance_copy(true);
}
else if instance_number(obj_rock) < 12
{
	// if there are less than 12 rocks in the room, and if that's true, it changes the rock into a big rock.
    sprite_index = spr_rock_big;
    x = -100;
}
else
{
	instance_destroy();
}
