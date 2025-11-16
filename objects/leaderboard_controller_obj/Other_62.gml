var received_id = async_load[? "id"];

if (received_id == request_id) {
    if (async_load[? "status"] == 0) {
        // Success
        var raw = async_load[? "result"];
        debug_event(raw)
        // Parse JSON
        var data = json_parse(raw);

        // Convert array of structs into GameMaker structs
        leaderboard = [];
        var count = array_length(data);
        for (var i = 0; i < count; i++) {
            var entry = data[i];
            array_push(leaderboard, {
				player_rank: entry.rank,
                player_name: entry.player_name,
                player_score: entry.player_score
            });
        }
    } else {
        show_debug_message("Leaderboard request failed.");
    }

    loading = false;
}