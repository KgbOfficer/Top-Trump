function update_trump(card_suit, trump_suit) {
    if (card_suit == trump_suit) return true;

    // Handle left bower (Jack of same color)
    if (card_suit == "hearts" && trump_suit == "diamonds") return true;
    if (card_suit == "diamonds" && trump_suit == "hearts") return true;
    if (card_suit == "clubs" && trump_suit == "spades") return true;
    if (card_suit == "spades" && trump_suit == "clubs") return true;

    return false;
}
