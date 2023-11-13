/// ghosts_nearby_count(ghost_paths, distance_threshold)
var ghost_paths = argument0;
var distance_threshold = argument1;

var count = 0;
for (var i = 0; i < ds_list_size(ghost_paths); i++) {
    if (ds_list_size(ghost_paths[| i]) > 0
        && ds_list_size(ghost_paths[| i]) <= distance_threshold) count++;
}
return count;
