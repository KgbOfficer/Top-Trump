if (global.has_trump_twist && !global.used_trump_twist) {
    // Get a list of other suits
    var suits = ["hearts", "diamonds", "clubs", "spades"];
    var new_suit;

    do {
        new_suit = choose(unpack(suits));
    } until (new_suit != global.trump_suit);

    global.trump_suit = new_suit;
    global.used_trump_twist = true;

    show_debug_message("🔄 Trump changed mid-hand to: " + global.trump_suit);
}
