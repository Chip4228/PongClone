/// @description Bounce and Reset

//This takes care of the ball bouncing off ceiling and floor of the room 
if (y <= sprite_height/2 || y >= room_height-(sprite_height/2))	// ||is the same as OR
{
	vspeed *= -1;
}

//check if player scored
if (x <= 0) || (x >= 1024)	//0 is the left sid eof screen, 1024 is right side of screen
{
	//which player scored
	if (x >= 1024)
	global.player1_score += 1;
	else
	global.player2_score += 1;}


	//check if winning score is reached, if so show new room (win message)
	if (global.player1_score = 5)	//change this number to 10 after test
	{
		room_goto(rmP1Win)
	}
	
	if(global.player2_score = 5)	//change this number to 10 after testing
	{
		room_goto(rmP2Win)
	}
	

//This takes care of reseting after the ball goes past the paddle on either side
if (x <= 0 || x >= room_width)
{
	x = xstart;
	y = ystart;
}