/// @description Insert description here
// You can write your code in this editor
var deltaDistance = movement/pathLength;

currentDistance++;
x = path_get_x(currentPath, deltaDistance * currentDistance);
y = path_get_y(currentPath, deltaDistance * currentDistance);

alarm[0] = 15;