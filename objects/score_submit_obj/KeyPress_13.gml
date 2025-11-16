submit_to_manager();
show_debug_message("Submitted")

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
