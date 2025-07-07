if (global.awaiting_trump_choice) {
    global.trump_suit = global.turned_up_suit;
    global.trump_chosen = true;
    global.awaiting_trump_choice = false;

    show_debug_message("Player accepts trump: " + global.trump_suit);

    instance_destroy(); // Remove picker
    reset_hand();       // Start hand
}
