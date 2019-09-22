/// @description Insert description here
// You can write your code in this editor

draw_set_colour(c_green);
draw_set_font(title_font)
draw_set_halign(fa_center)
draw_set_valign(fa_center)

draw_text_transformed(room_width / 2, 100, "CONGRATULATIONS", .75, .75, image_angle);

draw_set_font(title_font)

draw_text_transformed(room_width / 2, 225, "Press [ESC]", .5, .5, image_angle);

draw_set_colour(c_gray);

draw_text(room_width / 2, 400, "You collected:\n" + string(global.soul_collected) + " out of 15 souls!");