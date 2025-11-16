var key = keyboard_lastchar;

if (keyboard_key == vk_backspace) {
    if (string_length(player_name) > 0)
        player_name = string_delete(player_name, string_length(player_name), 1);
}
else if (keyboard_key >= ord(" ") && keyboard_key <= ord("~")) {
    // Allow normal text characters
    player_name += string_upper(key);
}
