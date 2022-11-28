function PlayerState_Free(){

Walk();
Jump();

// Horizontal Collisions
repeat(abs(hsp)) {
    // Move up slope
    if (place_meeting(x + sign(hsp), y, collide_list) && place_meeting(x + sign(hsp), y - 1, collide_list) && !place_meeting(x + sign(hsp), y - 2, collide_list))
        y -= 2;
    else if (place_meeting(x + sign(hsp), y, collide_list) && !place_meeting(x + sign(hsp), y - 1, collide_list))
        --y;
    
    // Move down slope
    if (!place_meeting(x + sign(hsp), y, collide_list) && !place_meeting(x + sign(hsp), y + 1, collide_list) && !place_meeting(x + sign(hsp), y + 2, collide_list) && place_meeting(x + sign(hsp), y + 3, collide_list))
        y += 2;
    else if (!place_meeting(x + sign(hsp), y, collide_list) && !place_meeting(x + sign(hsp), y + 1, collide_list) && place_meeting(x + sign(hsp), y + 2, collide_list))
        ++y; 

    if (!place_meeting(x + sign(hsp), y, collide_list))
        x += sign(hsp); 
    else {
        hsp = 0;
        break;
    }
}



//Vertical Collision
if (place_meeting(x,y+vsp,collide_list))
{
	while (!place_meeting(x,y+sign(vsp),collide_list))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Parachute
if (!vsp == 0) && (key_up)
{
	vsp = 1
}

//Animation
if (sign(floor(vsp)) < 0) {
	sprite_index = sPlayer_Jump2
	image_speed = 1
} else if (sign(floor(vsp)) > 0) {
	if (image_index == 0 )image_speed = 1;
	sprite_index = sPlayer_Jump3;
	if (image_index > 3) image_speed = 0;
}
else if (hsp == 0) && (OnGround(collide_list)){
	image_speed = 1
	sprite_index = sPlayer_Idle;
} else if (vsp == 0){
	image_speed = 1
	sprite_index = sPlayerW;
}

if (hsp != 0) image_xscale = sign(hsp);

show_debug_message(vsp)
}
