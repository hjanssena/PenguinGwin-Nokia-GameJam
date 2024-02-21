if(!moving_block)
{
	if(keyboard_check_pressed(vk_up) && y > 3)
	{
		y -= 6;
	}
	if(keyboard_check_pressed(vk_down) && y < 75)
	{
		y += 6;
	}
	if(keyboard_check_pressed(vk_left) && x > 3)
	{
		x -= 6
	}
	if(keyboard_check_pressed(vk_right) &&  x < 42)
	{
		x += 6
	}
}
else
{
	if(keyboard_check_pressed(vk_up) && y > 3)
	{
		_block.y_dir = -1;
		_block.x_dir = 0;
		_block.move = true;
	}
	if(keyboard_check_pressed(vk_down) && y < 75)
	{
		_block.y_dir = 1;
		_block.x_dir = 0;
		_block.move = true;
	}
	if(keyboard_check_pressed(vk_left) && x > 3)
	{
		_block.y_dir = 0;
		_block.x_dir = -1;
		_block.move = true;
	}
	if(keyboard_check_pressed(vk_right) &&  x < 42)
	{
		_block.y_dir = 0;
		_block.x_dir = 1;
		_block.move = true;
	}
}

if(keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_block) && !moving_block)
{
	_block = instance_position(x,y,obj_block);
	moving_block = true;
}

else if(keyboard_check_pressed(vk_space) && moving_block)
{
	moving_block = false;
}