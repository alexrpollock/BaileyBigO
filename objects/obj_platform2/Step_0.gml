/// @description Insert description here
// You can write your code in this editor

//Story Line Display for Level 2!



if(obj_sink.itemsRecieved and obj_tv.itemsRecieved and obj_basket.itemsRecieved){
	//Level Completed!
	//Display message and activate the door
	
	//When player opens the door, go to room_2_puzzle
	script_sfx("win");
	script_finishLevelIncr(3);
	room_goto(level_select_screen);
}

//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(level_select_screen);
}