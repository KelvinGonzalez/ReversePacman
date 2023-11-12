/// ds_grid_create_undefined(w, h)
var grid = ds_grid_create(argument0, argument1);
for (var xx = 0; xx < argument0; xx++) {
    for (var yy = 0; yy < argument1; yy++) {
        grid[# xx, yy] = undefined;
    }
}
return grid;
