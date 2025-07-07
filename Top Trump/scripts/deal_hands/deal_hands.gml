function deal_hands(deck) {
    var shuffled_deck = array_shuffle(deck);
    var player_hand = [];
    var ai_hand = [];

    for (var i = 0; i < 5; i++) {
        array_push(player_hand, shuffled_deck[i]);
        array_push(ai_hand, shuffled_deck[i + 5]);
    }

    return [player_hand, ai_hand, shuffled_deck]; // hands + remainder
}
