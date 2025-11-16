draw_set_color(c_white);
draw_set_font(Font1);

draw_rectangle(50, 80, 350, 120, false);
draw_text(50, 40, "Submit Score");

if (selected_field == "name") {
    draw_rectangle_color(50, 80, 350, 120, c_black, c_black, c_black, c_black, false);
}
/// NAME FIELD
draw_text(50, 70, "Name:");
draw_text(60, 95, player_name);


/// SUBMIT BUTTON
draw_rectangle_color(50, 180, 320, 220, c_black, c_black, c_black, c_black, false);
draw_text(85, 195, "Submit");

draw_text(50, 250, submit_status);
