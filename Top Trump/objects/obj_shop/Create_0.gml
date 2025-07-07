// Sample upgrade pool
upgrade_pool = [
    "Trump Twist",    // Change trump mid-hand
    "Card Burner",    // Burn one card to auto-win trick
    "Lucky Draw",     // Start with extra card
    "Off-Suit Ace",   // Aces always beat trump of same rank
    "Mind Game"       // See AI’s hand
];

// Pick 3 random upgrades
shop_offers = [];
for (var i = 0; i < 3; i++) {
    var upg = choose(unpack(upgrade_pool));
    array_push(shop_offers, upg);
}
