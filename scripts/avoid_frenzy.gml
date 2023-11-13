/// avoid_frenzy(cur_x, cur_y, pacman_path)

var cur_x, cur_y, pacman_path, valid_directions, good_directions;
cur_x = argument0;
cur_y = argument1;
pacman_path = argument2;
valid_directions = ds_list_create();
good_directions = ds_list_create();

for (var dir = 0; dir < 4; dir++) {
    var next_x = cur_x + ((dir == 0) - (dir == 2));
    var next_y = cur_y + ((dir == 3) - (dir == 1));
    if (next_x < 0 || next_y < 0 || next_x >= ds_grid_width(global.grid) || next_y >= ds_grid_height(global.grid)) continue;
    if (global.grid[# next_x, next_y] == 1) continue;
    ds_list_add(valid_directions, dir);
    if (point_in_path(next_x, next_y, pacman_path)) continue; 
    ds_list_add(good_directions, dir);
}

var dir;
if (ds_list_size(valid_directions) == 0) {
    dir = -1;
}
else if (ds_list_size(good_directions) == 0) {
    dir = valid_directions[| irandom(ds_list_size(valid_directions)-1)]
}
else {
    dir = good_directions[| irandom(ds_list_size(good_directions)-1)]
}

dir_x = (dir == 0) - (dir == 2);
dir_y = (dir == 3) - (dir == 1);
target_x = from_grid(cur_x + dir_x);
target_y = from_grid(cur_y + dir_y);

ds_list_destroy(valid_directions);
ds_list_destroy(good_directions);
