if(move && !moving)
{
	wanted_x = x;
	wanted_y = y;
	//Calculate the wanted position
	while(!place_meeting(wanted_x+(x_dir*3),wanted_y+(y_dir*3),obj_wall) && !place_meeting(wanted_x+(x_dir*3),wanted_y+(y_dir*3),obj_block) && !place_meeting(wanted_x+(x_dir*3),wanted_y+(y_dir*3),obj_goal) && wanted_x+(x_dir*3) != -3 && wanted_x+(x_dir*3) != 45 && wanted_y+(y_dir*3) != -3 && wanted_y+(y_dir*3) != 81)
	{
		wanted_x += x_dir * 3;
		wanted_y += y_dir * 3;
	}
	
	move_towards_point(wanted_x, wanted_y,move_speed);
	moving = true;
	move = false;
	nokia_play_sound(snd_iceSlide);
}

if(moving)
{
	if(abs(x - wanted_x) < .1 && abs(y-wanted_y) < .1)
	{
		x = wanted_x;
		y = wanted_y;
		speed = 0;
		_cursor.moving_block = false;
		moving = false;
	}
}