/// @description Insert description here
// You can write your code in this editor

draw_set_color(make_color_rgb(255,255,255));
draw_set_alpha(1);
draw_set_font(font_bender_subtitle);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

for(i = 0; i < 11; i++){
	draw_text((room_width/2 - 350) + i*64, room_height/2, array[i]);
}