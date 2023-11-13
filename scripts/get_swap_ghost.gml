/// get_swap_ghost(x, y, dir_x, dir_y)
var xx = argument0;
var yy = argument1;
var dir_x = argument2;
var dir_y = argument3;

var min_angle_diff = 360;
var result = undefined;
var dir_angle = point_direction(0, 0, dir_x, dir_y);
for (var i = 0; i < instance_number(obj_ghost); i++) {
    var ghost = instance_find(obj_ghost, i);
    if (ghost.ghost_id == 0) continue;
    var angle_diff = angle_difference(dir_angle, point_direction(xx, yy, ghost.x, ghost.y));
    if (angle_diff < min_angle_diff) {
        min_angle_diff = angle_diff;
        result = ghost;
    }
}
return result;
