/// point_in_path(point_x, point_y, path)

var point_x = argument0;
var point_y = argument1;
var path = argument2;

for (var i = 0; i < ds_list_size(path); i += 2) {
    if (path[| i] == point_x && path[| i+1] == point_y) return true;
}
return false;
