function create_deck() {
    var suits = ["hearts", "diamonds", "clubs", "spades"];
    var ranks = ["9", "10", "J", "Q", "K", "A"];
    var new_deck = [];

    for (var i = 0; i < array_length(suits); i++) {
        for (var j = 0; j < array_length(ranks); j++) {
            var card = {
                rank: ranks[j],
                suit: suits[i],
                isTrump: false,
                powerUp: ""
            };
            array_push(new_deck, card);
        }
    }

    return new_deck;
}
