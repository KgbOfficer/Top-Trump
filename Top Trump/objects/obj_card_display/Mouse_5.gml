if (global.has_card_burner && !global.used_card_burner && global.player_turn) {
    show_debug_message("🔥 Card Burner activated with: " + rank + " of " + suit);

    global.used_card_burner = true;
    global.player_turn = false;

    // Show card visually
    var inst = instance_create_layer(320, 200, "Instances", obj_trick_card);
    inst.rank = rank;
    inst.suit = suit;
    inst.source = "player";

    // Add to trick pile (as if played)
    var played_card = {
        rank: rank,
        suit: suit,
        source: "player"
    };
    array_push(global.trick_pile, played_card);

    // Remove from screen
    instance_destroy();

    // Skip AI play — player wins
    global.tricks_player += 1;
    show_debug_message("Player wins trick (Card Burner)");

    // Clear and reset
    global.trick_pile = [];
    global.lead_suit = "";

    // Wait one frame before destroying visual cards
    alarm[0] = 10;
}
