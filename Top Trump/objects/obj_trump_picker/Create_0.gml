// ==== Initialize upgrade flags ====
global.has_trump_twist = false;
global.has_card_burner = false;
global.extra_card_next_hand = false;
global.aces_are_super = false;
global.reveal_ai_hand = false;

// Pick a random suit as "turned up"
global.turned_up_suit = choose("hearts", "diamonds", "clubs", "spades");
global.trump_chosen = false;
global.awaiting_trump_choice = true;
