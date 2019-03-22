/// @description Insert description here

// Vertical Movement
verticalSpeed = walkSpeed;
horizontalSpeed = walkSpeed;
if( keyboard_check(upKey) ){ // move up
	
	sprite_index = spr_baileyWalk;
	if( place_meeting(x, y-verticalSpeed, obj_nellyPuzzle1) || y-verticalSpeed-sprite_height < 0 ){ 
		verticalSpeed = 0;
	}
	y = y - verticalSpeed;
	
}else if( keyboard_check(downKey) ){ // move down
	
	sprite_index = spr_baileyWalk;
	if( place_meeting(x, y+verticalSpeed, obj_nellyPuzzle1) || y+verticalSpeed > room_height ){ 
		verticalSpeed = 0;
	}
	y = y + verticalSpeed;
	
}
// Horizontal Movement
if( keyboard_check(leftKey) ){ // move left
	
	sprite_index = spr_baileyWalk;
	image_xscale = -1;
	if( place_meeting(x-horizontalSpeed, y, obj_nellyPuzzle1) || x-horizontalSpeed+sprite_width/2 < 0 ){ 
		horizontalSpeed = 0;
	}
	x = x - horizontalSpeed;
	
}else if( keyboard_check(rightKey) ){ // move right
	
	sprite_index = spr_baileyWalk;
	image_xscale = 1;
	if( place_meeting(x+horizontalSpeed, y, obj_nellyPuzzle1) || x+sprite_width/2+horizontalSpeed > room_width ){ 
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	
}else if(!keyboard_check(upKey) && !keyboard_check(downKey)){ // not walking, stop animation
	sprite_index = spr_bailey;
}

if( keyboard_check_pressed(pickUpKey) ){
	if(place_meeting(x,y,obj_crate)){
		inst = instance_position(x,y,obj_crate);
		with(inst){
			if(!(active)){
				active = 1;
			}
		}
	}
}

//check if q is pressed to quit the game
if (keyboard_check(ord("Q"))){
	room_goto(room_quit);
}