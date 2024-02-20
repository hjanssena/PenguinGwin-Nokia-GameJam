if(keyboard_check_pressed(vk_up) && y > 3)
{
	y -= 6;
}
if(keyboard_check_pressed(vk_down) && y < 84)
{
	y += 6;
}
if(keyboard_check_pressed(vk_left) && x > 3)
{
	x -= 6
}
if(keyboard_check_pressed(vk_left) &&  x < 45)
{
	x += 6
}


if(keyboard_check_pressed(vk_space) && place_meeting(x,y,obj_block))
{
	var _block = instance_position(x,y,obj_block);
}