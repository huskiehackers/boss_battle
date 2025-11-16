//draw_set_font(fnt_default);
draw_set_color(c_white);

if (loading) {
    draw_text(32, 32, "Loading leaderboard...");
    return;
}

draw_text(32, 32, "=== Leaderboard ===");

var dy = 64;
for (var i = 0; i < array_length(leaderboard); i++) {
    var entry = leaderboard[i];
    draw_text(32, dy, string(i + 1) + ". " + entry.player_name + " - " + string(entry.player_score));
    dy += 24;
}
