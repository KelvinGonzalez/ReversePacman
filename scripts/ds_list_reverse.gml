/// ds_list_reverse(id)
var n = ds_list_size(argument0);
for (var i = 0; i < n; i++) {
    var temp = argument0[| i];
    argument0[| i] = argument0[| n-i-1];
    argument0[| n-i-1] = temp;
}
