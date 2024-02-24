/// @description sexy beast
var points = path_get_number(currentPath);
arrows = 0; 
arrows = [];

for(var i = 0; i < points-1; i ++){
	var _x =  path_get_point_x(currentPath, i+1);
	var _y =  path_get_point_y(currentPath, i+1);
	var _rot = point_direction(path_get_point_x(currentPath, i), path_get_point_y(currentPath, i), _x, _y) - 90;
	var _dist = point_distance(path_get_point_x(currentPath, i) , path_get_point_y(currentPath, i), _x, _y);
	if(_rot == -90){
		_x+=6;
	}else if(_rot == 90){
		_y+=6;
	}
	
	var arrowLine = instance_create_layer(_x, _y, "Instances", obj_arrowPath);
	arrowLine.image_angle = _rot;
	arrowLine.image_yscale = (_dist + 6) / arrowLine.sprite_height;
	
}


