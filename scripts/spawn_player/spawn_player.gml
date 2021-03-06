function spawn_player() {
	var xx = 0;
	var yy = 0;

	while (grid_[# xx,yy] != FLOOR){
		var xx = irandom_range(2, width_ - 2);
		var yy = irandom_range(2, height_ - 2);
	}

	var spawn_x = xx * CELL_SIZE + 16;
	var spawn_y = yy * CELL_SIZE + 16;

	if (instance_exists(obj_player)) {
		obj_player.x = spawn_x;
		obj_player.y = spawn_y;
	} else instance_create_layer(spawn_x, spawn_y, "Instances", obj_player);
}
