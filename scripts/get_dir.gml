/// get_dir(dir_x, dir_y)

var dir_x = argument0;
var dir_y = argument1;
var dir

if (dir_x == 1) dir = 0;
else if (dir_y == -1) dir = 1;
else if (dir_x == -1) dir = 2;
else dir = 3;

return dir;
