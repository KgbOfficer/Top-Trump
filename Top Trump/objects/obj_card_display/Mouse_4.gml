if (global.player_turn) {
    // Only allow the player to play if it's their turn
    var played_card = {
        rank: rank,
        suit: suit,
        source: "player"
    };
    
    array_push(global.trick_pile, played_card);
    global.lead_suit = suit;

    // Remove card from screen
    instance_destroy();

    global.player_turn = false;
}
if (global.player_turn) {
    // Show card in trick pile visually
    var inst = instance_create_layer(320, 200, "Instances", obj_trick_card);
    inst.rank = rank;
    inst.suit = suit;
    inst.source = "player";

    // Add to logic pile
    var played_card = {
        rank: rank,
        suit: suit,
        source: "player"
    };
    array_push(global.trick_pile, played_card);

    global.lead_suit = suit;

    // Destroy this visual hand card
    instance_destroy();

    global.player_turn = false;
}
