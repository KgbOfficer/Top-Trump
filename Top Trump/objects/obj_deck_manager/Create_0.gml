// ==== Create Euchre Deck ====
global.deck = create_deck();

// ==== Deal Player & AI Hands ====
var hands = deal_hands(global.deck);
global.player_hand = hands[0];
global.ai_hand = hands[1];

// ==== Debug Output ====
show_debug_message("PLAYER HAND:");
for (var i = 0; i < array_length(global.player_hand); i++) {
    var c = global.player_hand[i];
    show_debug_message(c.rank + " of " + c.suit);
}

show_debug_message("AI HAND:");
for (var i = 0; i < array_length(global.ai_hand); i++) {
    var c = global.ai_hand[i];
    show_debug_message(c.rank + " of " + c.suit);
}

// ==== Display Player's Hand on Screen ====
for (var i = 0; i < array_length(global.player_hand); i++) {
    var c = global.player_hand[i];
    var card_inst = instance_create_layer(100 + i * 90, 400, "Instances", obj_card_display);
    card_inst.rank = c.rank;
    card_inst.suit = c.suit;
}

// ==== Initialize Global Game State ====
global.lead_suit = "";
global.trick_pile = [];
global.player_turn = true;
global.tricks_player = 0;
global.tricks_ai = 0;
global.trump_suit = "hearts"; // TEMP: always hearts for now
