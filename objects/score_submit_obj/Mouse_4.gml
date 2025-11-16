// Name field click detection
if (mouse_x > 50 && mouse_x < 350 && mouse_y > 80 && mouse_y < 120) {
    selected_field = "name";
}

// Submit button
if (mouse_x > 50 && mouse_x < 200 && mouse_y > 180 && mouse_y < 220) {
    submit_to_manager();
	show_debug_log("Submitted")
}

function submit_to_manager() {

    if (player_name == "") {
        submit_status = "Enter a name.";
        return;
    }

    // Store values where your manager can see them
    global.player_name = player_name;

    // Trigger the manager's User Event 0
    with (leaderboard_controller_obj) {
        event_user(0);
    }

    submit_status = "Submitting...";
}
