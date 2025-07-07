draw_set_halign(fa_left);
draw_set_valign(fa_top);
draw_set_color(c_white);

draw_text(40, 40, "Choose an Upgrade:");

for (var i = 0; i < array_length(shop_offers); i++) {
    var yy = 80 + i * 40;
draw_text(60, yy, string(i + 1) + ". " + shop_offers[i]);

}
draw_text(40, 220, "Press [1], [2], or [3] to choose.");
