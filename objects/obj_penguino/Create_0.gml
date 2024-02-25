/// @description Insert description here
// You can write your code in this editor
alarm[0] = 15;
currentPath = asset_get_index("path_"+room_get_name(room));
movement = 1;
currentDistance = 0;
arrows = [];
crashed= false;
pathLength = path_get_length(currentPath);