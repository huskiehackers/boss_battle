//draw_set_font(fnt_default);
draw_set_color(c_white);

if(!ready_to_render) {
	return
}

if (loading) {
    draw_text(32, 32, "Loading leaderboard...");
    return;
}

draw_text(50, 120, "=== Leaderboard ===");

var dy = 120;
for (var i = 0; i < array_length(leaderboard); i++) {
    var entry = leaderboard[i];
    draw_text(64, dy, string(entry.player_rank) + ". " + entry.player_name + " - " + string(entry.player_score));
    dy += 24;
}
