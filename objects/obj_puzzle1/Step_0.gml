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
if(complete && (alarm_get(0) == -1)){
	script_sfx("destroy");
	show = pieces[stage];
	X = show.x;
	Y = show.y
	show.x = 350;
	show.y = 225;
	show.depth = -1000;
	show.visible = true;
	show.image_xscale = 7;
	show.image_yscale = 7;
	alarm[0] = 100;
}

if (obj_levelUnlockControl.popups == 3){
	instance_create_layer(room_height, room_width, "Dialogue", obj_storyPopUp)
	obj_storyPopUp.title = "Nice work!";
	obj_storyPopUp.content = "Now that those birds are back in order, you can help Bailey and Nelly deal with those darn turtles.";
	obj_levelUnlockControl.popups = 4;
}

if (obj_levelUnlockControl.popups >= 5){
	script_sfx("win");
	script_finishLevelIncr(2);
	room_goto(level_select_screen);
	instance_destroy();
}