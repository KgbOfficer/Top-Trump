if (global.awaiting_trump_choice) {
    global.awaiting_trump_choice = false;

    // Let AI choose or fallback to random
    var ai_accepts = choose(true, false); // TEMP: 50/50 chance

    if (ai_accepts) {
        global.trump_suit = global.turned_up_suit;
        global.trump_chosen = true;
        show_debug_message("AI accepts trump: " + global.trump_suit);
    } else {
        global.trump_suit = choose("hearts", "diamonds", "clubs", "spades");
        global.trump_chosen = true;
        show_debug_message("Both passed. Random trump: " + global.trump_suit);
    }

    instance_destroy(); // Remove picker
    reset_hand();       // Start hand
}
