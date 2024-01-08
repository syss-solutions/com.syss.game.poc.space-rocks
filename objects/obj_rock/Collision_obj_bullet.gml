/// @description Bullet Collision

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
