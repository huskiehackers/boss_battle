if(!global.submitted){
	draw_set_color(c_white);
	draw_set_font(Font1);

	draw_text(300, 300, "Press Enter to Submit:");

	/// NAME FIELD
	draw_text(300, 380, "Name:");
	draw_text(430, 380, player_name);

	draw_text(500, 300, submit_status);

	//show_debug_message("drawn submit")
}