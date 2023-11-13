/// get_path()
ds_list_destroy(path);
if (ghost_id == 0) {
    path = ds_list_create();
    //path = shortest_path(to_grid(x), to_grid(y), to_grid(obj_pacman.x), to_grid(obj_pacman.y))
}
else if (ghost_id == 1) {
    path = shortest_path(to_grid(x), to_grid(y), to_grid(obj_pacman.x + obj_pacman.dir_x * global.cell_size), to_grid(obj_pacman.y + obj_pacman.dir_y * global.cell_size));
}
else if (ghost_id == 2) {
    var blinky = get_blinky();
    var target_x = to_grid(room_width - blinky.x);
    var target_y = to_grid(room_height - blinky.y);
    path = shortest_path(to_grid(x), to_grid(y), target_x, target_y)
}
else {
    path = shortest_path(to_grid(x), to_grid(y), to_grid(obj_pacman.x), to_grid(obj_pacman.y));
}
