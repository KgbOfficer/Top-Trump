draw_self();

// Draw text
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_black);
draw_text(x + sprite_width/2, y + sprite_height/2, rank + " of " + suit);
