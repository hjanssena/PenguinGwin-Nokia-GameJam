/// @description sexy beast
var points = path_get_number(currentPath);
arrows = 0; 
arrows = [];

for(var i = 0; i < points-1; i ++){
	var x1 = path_get_point_x(currentPath, i);
	var y1 =  path_get_point_y(currentPath, i);
	var x2 =  path_get_point_x(currentPath, i+1);
	var y2 =  path_get_point_y(currentPath, i+1);
	var _rot = point_direction(x1, y1, x2, y2) - 90;
	var _dist = point_distance(x1 ,y1, x2, y2);
	var xDir= x1 - x2;
	var yDir= y1 - y2;
	
	if(yDir < 0){
		x2+=6;
	}else if(yDir > 0){
		
	}
	
	if(xDir < 0){
		
	}else if(xDir > 0){
		x2+=6;
		y2+=6;
	}
	
	var arrowLine = instance_create_layer(x2, y2, "ArrowPath", obj_arrowPath);
	arrowLine.image_angle = _rot;
	arrowLine.image_yscale = (_dist + 6) / arrowLine.sprite_height;
	
}


