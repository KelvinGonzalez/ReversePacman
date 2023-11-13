/// paths_intersect(target_path, ghost_paths, distance_threshold)

var target_path = argument0;
var ghost_paths = argument1;
var distance_threshold = argument2;

for (var j = 0; j < ds_list_size(ghost_paths); j++) {
    var ghost_path = ghost_paths[| j];
    if (ds_list_size(ghost_path) > distance_threshold) {
        continue;
    }
    
    var n = ds_list_size(target_path)
    var strength = 3;
    if (point_in_path(target_path[| n-1-3], target_path[| n-1-2], ghost_path)) {
        //if (n <= 4 || point_in_path(target_path[| n-1-5], target_path[| n-1-4], ghost_path)) {
            return true;
        //}
    }
    
    /*var n = ds_list_size(target_path)
    var cur_x = target_path[| n-1-1];
    var cur_y = target_path[| n-1-0];
    var ghost_x = ghost_path[| 0];
    var ghost_y = ghost_path[| 1];
    
    for (var i = 2; i < n && i < ds_list_size(ghost_path); i += 2) {
        var prev_x = cur_x;
        var prev_y = cur_y;
        cur_x = target_path[| n-i-1-1];
        cur_y = target_path[| n-i-1-0];
        ghost_x = ghost_path[| i];
        ghost_y = ghost_path[| i+1];
        
        if (cur_x == ghost_x && cur_y == ghost_y || ghost_x == prev_x && ghost_y == prev_y) {
            return true;
        }
    }*/
}
return false;
