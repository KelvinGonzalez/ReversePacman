for (var i = 0; i < instance_number(obj_ghost); i++) {
    ghost = instance_find(obj_ghost, i);
    if (ghost.ghost_id == 0) return ghost;
}
return undefined;
