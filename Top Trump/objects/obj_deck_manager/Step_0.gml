if (!global.player_turn && array_length(global.trick_pile) == 1) {
    // AI turn
    var best_card = global.ai_hand[0];
    var best_index = 0;

    for (var i = 1; i < array_length(global.ai_hand); i++) {
        var card = global.ai_hand[i];
        if (card.suit == global.lead_suit) {
            best_card = card;
            best_index = i;
            break;
        }
    }

    // Visual play
    var inst = instance_create_layer(440, 200, "Instances", obj_trick_card);
    inst.rank = best_card.rank;
    inst.suit = best_card.suit;
    inst.source = "ai";

    // Add to trick logic
    array_push(global.trick_pile, {
        rank: best_card.rank,
        suit: best_card.suit,
        source: "ai"
    });

    // Remove from AI hand
    array_delete(global.ai_hand, best_index, 1);

    // Result logic
    var p = global.trick_pile[0];
    var a = global.trick_pile[1];
    var winner = "player"; // default

var rv_player = rank_value(p, global.lead_suit, global.trump_suit);
var rv_ai = rank_value(a, global.lead_suit, global.trump_suit);

if (rv_ai > rv_player) {

    winner = "ai";
}

if (winner == "player") {
    global.tricks_player += 1;
    show_debug_message("Player wins the trick (" + string(global.tricks_player) + ")");
} else {
    global.tricks_ai += 1;
    show_debug_message("AI wins the trick (" + string(global.tricks_ai) + ")");
}

// ==== End of Hand Check ====
var total_tricks = global.tricks_player + global.tricks_ai;
if (total_tricks >= 5) {
    if (global.tricks_player > global.tricks_ai) {
        show_debug_message("🎉 Player wins the hand!");
    } else if (global.tricks_ai > global.tricks_player) {
        show_debug_message("💀 AI wins the hand!");
    } else {
        show_debug_message("🤝 It's a tie!");
    }

    // TEMP: Reset for next hand (we’ll improve this later)
    if (global.tricks_player > global.tricks_ai) {
    show_debug_message("🎉 Player wins the hand!");
    instance_create_layer(0, 0, "Instances", obj_shop);
} else {
    show_debug_message("💀 AI wins the hand!");
    reset_hand(); // continue if player loses
}
 // restarts entire game — we’ll replace with proper round reset soon
}


    // Cleanup
    global.trick_pile = [];
    global.lead_suit = "";
    global.player_turn = true;

    with (obj_trick_card) {
        instance_destroy();
    }
}
