function scr_userift() {
	global.rift_count ++;

	switch(selected_item){
		case item.rift_a: cont_inv.has_rift[0] = true; break;
		case item.rift_b: cont_inv.has_rift[1] = true; break;
		case item.rift_c: cont_inv.has_rift[2] = true; break;
	}

	if (global.rift_count >= 3){
		cont_inv.show_inventory = false;
		global.rift_count = 0;
		var i = 0; repeat (3){
			has_rift[i] = false;
			i++;
		}
		with(obj_game){
			room_transition = true;
		}
	}


}
