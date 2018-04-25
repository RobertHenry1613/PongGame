/// @description Bounce & Reset

//This takes care of the ball bouncing off ceiling and floor
if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))	// || is the same as OR
{
	vspeed *= -1;
}

//Check if player scored
if (x <= 0) || (x >= 1024)      // 0 is the left side of screen, 1024 is right side of screen
{
	// Which player scored?
	if (x >= 1024)
	global.player1_score += 1;
	else
	global.player2_score += 1;


	//Check if winning score is reached, if so show new room (win message)
	if (global.player1_score = 10)	//change this number to 10 after testing
	{
		room_goto(rmP1Win)
	}
	
	if (global.player2_score = 10)	//change this number to 10 after testing
	{
		room_goto(rmP2Win)
	}
}

//This takes care of resetting after the ball goes past the paddle on either side
if (x <= 0 || x >= room_width)
{
	audio_play_sound(sndScore, 1, false);
	x = xstart;
	y = ystart;
}
