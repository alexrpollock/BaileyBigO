/// @description Insert description here

// var  = keyword for temporary, only one frame
// might switch to right minus left check so doesn't move when both are pressed

// Horizontal Movement
horizontalSpeed = walkSpeed;
if( keyboard_check(leftKey) ){ // move left
	
	sprite_index = spr_nellyWalk;
	image_xscale = -1;
	if( place_meeting(round(x-horizontalSpeed), round(y), obj_platform) ){ // is there a collision
		// yes: don't move there, move as close as possible
		while( !place_meeting(round(x-1), round(y), obj_platform) ){
			x=x-1;
		}
		horizontalSpeed = 0;
	}
	x = x - horizontalSpeed;
	
	
}else if( keyboard_check(rightKey) ){ // move right
	
	sprite_index = spr_nellyWalk;
	image_xscale = 1;
	if( place_meeting(round(x+horizontalSpeed), round(y), obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(round(x+1), round(y), obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}
	x = x + horizontalSpeed;
	
}else{ // not walking, stop animation
	sprite_index = spr_nelly;
}

// Jumping
// TODO: only jump from ground or limit # of jumps
if( keyboard_check(jumpKey) ){
	verticalSpeed = jumpVal;
}else if( place_meeting(x, y, obj_platform) ){ // on ground not jumping
	verticalSpeed = 0;
}

if( keyboard_check(crouchKey) ){ // crouch
	
}

// Falling
verticalSpeed = verticalSpeed + grav
if( place_meeting(x, y+verticalSpeed, obj_platform) ){ // is there a collision?
	// yes, don't fall completely, fall to floor 
	while( !place_meeting(x, y+sign(verticalSpeed), obj_platform) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

if( keyboard_check(pickUpKey) ){
	
}