/// @description Insert description here
// You can write your code in this editor
if(switchLever){
	switchLever = false;
	script_sfx("catch");
	if(index == 0){
		sprite_index = spr_levelDown;
		index++;
	} else {
		sprite_index = spr_levelUp;
		index = 0;
	}
}