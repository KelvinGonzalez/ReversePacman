/// get_path()
ds_list_destroy(path);
if (ghost_id == 0) {
    path = shortest_path(to_grid(x), to_grid(y), to_grid(obj_pacman.x), to_grid(obj_pacman.y))
}
else if (ghost_id == 1) {
    path = shortest_path(to_grid(x), to_grid(y), to_grid(obj_pacman.x + sign(obj_pacman.hsp)), to_grid(obj_pacman.y + sign(obj_pacman.hsp)));
}
else if (ghost_id == 2) {
    var blinky = get_blinky();
    var target_x = to_grid(room_width - blinky.x);
    var target_y = to_grid(room_height - blinky.y);
    var dir_x = sign(to_grid(room_width/2) - target_x);
    var dir_y = sign(to_grid(room_height/2) - target_y);
    while (global.grid[# target_x, target_y] == 1) {
        target_x += dir_x;
        if (global.grid[# target_x, target_y] != 1) {
            break;
        }
        target_y += dir_y;
    }
    path = shortest_path(to_grid(x), to_grid(y), target_x, target_y)
}
else {
    path = ds_list_create();
}
