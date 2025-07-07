if (global.awaiting_trump_choice) {
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_set_color(c_white);
    draw_text(320, 100, "Turned up suit: " + string(global.turned_up_suit));
    draw_text(320, 140, "Accept this as trump?");
    draw_text(270, 180, "[Y] Yes     [N] No");
}
