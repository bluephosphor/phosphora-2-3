global.seed = randomise();


chest_index = 0;
room_chest_index = 0;
room_count = 0;
mob_cap = room_data[# rm.mob_cap,room];
alarm[0] = room_speed * 5;

temp_string = -1;
file_grid = -1;

depth -= 5000;


if (global.load_map) {
	generate_from_tiled();
	global.load_map = false;
} else {
	script_execute(room_data[# rm.script,room]);
}

grid_surface = noone;
minimap_init();

with (obj_game) event_perform(ev_other,ev_user0);