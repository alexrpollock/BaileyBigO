/// @description Insert description here
// You can write your code in this editor

for(i = 0; i < 4; i++){
	for(j = 0; j < 4; j++){	
		active[i,j] = real(crates[i,j].active);
	}
}
complete = 1;
	
for(i = 0; i < 4; i++){
	for(j = 0; j < 4; j++){	
		if(!(active[i,j]==real(stageSolutions[i+4*stage,j]))){
			complete = 0;
			return;
		}
	}
}

if(complete){
	pieces[stage].visible = true;
	stage++;
	script_sfx("destroy");
	if (stage >= 4) {
		script_sfx("win");
		script_finishLevelIncr(2);
		room_goto(level_select_screen);
	} else {
		//redraw = true;
		for(i = 0; i < 4; i++){
			for(j = 0; j < 4; j++){
				crates[i,j].active = irandom(1);
			}
		}
	}
}

//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(level_select_screen);
}


