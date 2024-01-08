/// @description Rock Movement

/* 
	We enable wrapping for the rock, with a margin of 100. 
	This means a rock will only wrap around once it’s more than 
	100 pixels outside the room.
*/
move_wrap(true, true, 100);

// The rock continues to rotate constantly.
image_angle += 1;
