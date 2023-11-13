/// find_nearest_big_dot(cur_x, cur_y)

var cur_x, cur_y, width, height, queue, parent_x, parent_y, grid;
cur_x = argument0;
cur_y = argument1;
grid = global.grid;
width = ds_grid_width(grid);
height = ds_grid_height(grid);
queue = ds_queue_create();
parent_x = ds_grid_create_undefined(width, height);
parent_y = ds_grid_create_undefined(width, height);

ds_queue_enqueue(queue, cur_x);
ds_queue_enqueue(queue, cur_y);
parent_x[# cur_x, cur_y] = -1;
parent_y[# cur_x, cur_y] = -1;

var found = false;
while (!found && !ds_queue_empty(queue)) {
    cur_x = ds_queue_dequeue(queue);
    cur_y = ds_queue_dequeue(queue);
    
    if (grid[# cur_x, cur_y] == 3) {
        found = true;
        break;
    }
    
    for (var dir = 0; dir < 4; dir++) {
        var next_x = cur_x + ((dir == 2) - (dir == 3));
        var next_y = cur_y + ((dir == 1) - (dir == 0));

        if (next_x >= 0 && next_x < width && next_y >= 0 && next_y < height && parent_x[# next_x, next_y] == undefined && grid[# next_x, next_y] != 1) {
            ds_queue_enqueue(queue, next_x);
            ds_queue_enqueue(queue, next_y);
            parent_x[# next_x, next_y] = cur_x;
            parent_y[# next_x, next_y] = cur_y;
        }
    }
}

var path = ds_list_create();
if (found) {
    while (cur_x != -1 && cur_y != -1) {
        ds_list_add(path, cur_x);
        ds_list_add(path, cur_y);

        var temp = parent_x[# cur_x, cur_y];
        cur_y = parent_y[# cur_x, cur_y];
        cur_x = temp;
    }
}

ds_queue_destroy(queue);
ds_grid_destroy(parent_x);
ds_grid_destroy(parent_y);

return path;
