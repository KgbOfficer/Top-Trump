function apply_upgrade(upgrade_name) {
    switch (upgrade_name) {
        case "Trump Twist":
            global.has_trump_twist = true;
            show_debug_message("🌀 Gained ability: Trump Twist");
            break;
        case "Card Burner":
            global.has_card_burner = true;
            show_debug_message("🔥 Gained ability: Card Burner");
            break;
        case "Lucky Draw":
            global.extra_card_next_hand = true;
            show_debug_message("🍀 Gained ability: Lucky Draw");
            break;
        case "Off-Suit Ace":
            global.aces_are_super = true;
            show_debug_message("🪄 Gained passive: Off-Suit Ace");
            break;
        case "Mind Game":
            global.reveal_ai_hand = true;
            show_debug_message("🧠 Gained passive: Mind Game");
            break;
    }
}
