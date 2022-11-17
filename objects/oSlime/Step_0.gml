vsp = vsp + grv;


// Horizontal Collisions [NEW]
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
        hsp = -hsp;
		x += sign(hsp) * 2;
		break;
	}
}

show_debug_message(hsp)

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



if (hsp != 0) image_xscale = sign(hsp)