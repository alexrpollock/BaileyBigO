/// @description Insert description here
// You can write your code in this editor
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(make_color_rgb(248,153,29));
draw_set_alpha(1);

draw_set_font(font_bender_midtitle);
draw_text(x, y, "Nelly's\nControls");

draw_sprite(spr_nelly, 1, x+175, y+50);