function rank_value(card, lead_suit, trump_suit) {
    var suit = card.suit;
    var rank = card.rank;

    // === LEFT BOWER CHECK ===
    var is_left_bower = false;

    if (rank == "J") {
        switch (trump_suit) {
            case "hearts":
                is_left_bower = (suit == "diamonds");
                break;
            case "diamonds":
                is_left_bower = (suit == "hearts");
                break;
            case "clubs":
                is_left_bower = (suit == "spades");
                break;
            case "spades":
                is_left_bower = (suit == "clubs");
                break;
        }
    }

    // === RIGHT BOWER ===
    if (suit == trump_suit && rank == "J") {
        return 100; // highest
    }

    // === LEFT BOWER ===
    if (is_left_bower) {
        return 99; // second-highest
    }

    // === Regular Trump Cards ===
    if (suit == trump_suit) {
        switch (rank) {
            case "A": return 98;
            case "K": return 97;
            case "Q": return 96;
            case "10": return 95;
            case "9": return 94;
        }
    }

    // === Lead Suit Cards ===
    if (suit == lead_suit) {
        switch (rank) {
            case "A": return 80;
            case "K": return 79;
            case "Q": return 78;
            case "J": return 77;
            case "10": return 76;
            case "9": return 75;
        }
    }

    // === Off-suit Trash ===
    return 0;
}
