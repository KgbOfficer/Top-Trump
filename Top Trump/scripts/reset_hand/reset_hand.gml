function reset_hand() {
    // Rebuild deck and deal again
    global.deck = create_deck();
    var hands = deal_hands(global.deck);
    global.player_hand = hands[0];
    global.ai_hand = hands[1];

    // Reset trick counters
    global.tricks_player = 0;
    global.tricks_ai = 0;
    global.trick_pile = [];
    global.lead_suit = "";
    global.player_turn = true;

    // Clean up previous cards
    with (obj_card_display) {
        instance_destroy();
    }
    with (obj_trick_card) {
        instance_destroy();
    }

    // Display new player hand
    for (var i = 0; i < array_length(global.player_hand); i++) {
        var c = global.player_hand[i];
        var card_inst = instance_create_layer(100 + i * 90, 400, "Instances", obj_card_display);
        card_inst.rank = c.rank;
        card_inst.suit = c.suit;
    }

    show_debug_message("=== New Hand Dealt ===");
}
global.used_trump_twist = false;
global.used_card_burner = false;
