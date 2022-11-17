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

/*
if (!place_meeting(x,y+1,collide_list))
{
	sprite_index = sPlayer_Idle;
	image_speed = 0;
	if (sign(vsp) > 0) image_index = 1; else image_index = 0;
}
	else
	{
		image_speed = 1;
		if (hsp == 0)
		{
		sprite_index = sPlayer_Idle;
		}
		else
		{
			sprite_index = sPlayerW;
		}
	}
*/

if (hsp != 0) image_xscale = sign(hsp)