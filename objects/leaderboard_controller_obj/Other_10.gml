var payload = json_stringify({
	player_name: global.player_name,
	player_score: global.player_health*100*exp(-global.time_to_win/100000),
});

show_debug_message(payload)

// Build headers
var headers = ds_map_create();
ds_map_add(headers, "Content-Type", "application/json");
	
// Send POST request
request_id = http_request(api_url, "POST", headers, payload);
show_debug_message("Request sent")
leaderboard = []; // where we’ll store entries
loading = true;