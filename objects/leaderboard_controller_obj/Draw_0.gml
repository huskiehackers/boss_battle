//draw_set_font(fnt_default);
draw_set_color(c_white);

if(!ready_to_render) {
	return
}

if (loading){
global.submitted = false
    draw_text(300, 300, "Loading leaderboard...");
    return;
}


draw_text(300, 300, "Leaderboard: ");

var dy = 350;
for (var i = 0; i < array_length(leaderboard); i++) {
    var entry = leaderboard[i];
    draw_text(300, dy, string(entry.player_rank) + ". " + entry.player_name + " - " + string(entry.player_score));
    dy += 40;
}
