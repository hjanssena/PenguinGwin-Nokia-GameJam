if(move)
{
	wanted_x = x;
	wanted_y = y;
	//Calculate the wanted position
	while(!place_meeting(wanted_x+(x_dir*3),wanted_y+(y_dir*3),obj_wall) || wanted_x < 9 || wanted_x > 39 || wanted_y < 9 || wanted_y > 72 )
	{
		wanted_x += x_dir * 3;
		wanted_y += y_dir * 3;
	}
	
	move_towards_point(wanted_x, wanted_y,speed);
	moving = true;
	move = false;
}

if(moving)
{
	if(distance_to_point(wanted_x,wanted_y) < .1)
	{
		x = wanted_x;
		y = wanted_y;
		speed = 0;
		moving = false;
	}	
}