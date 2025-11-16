debug_event("Event called")


var payload = json_stringify({
	player_name: "Bob",
	player_score: 95,
});
	
// Send POST request
request_id = http_request(api_url, "POST", ds_map_create(), payload);
leaderboard = []; // where we’ll store entries
loading = true;

