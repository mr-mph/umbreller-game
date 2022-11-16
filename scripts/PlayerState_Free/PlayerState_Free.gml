// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){

Walk();
Jump();

/*
Horizontal Collisions [ORIGINAL] 
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
*/

// Horizontal Collisions [NEW]
repeat(abs(hsp)) {
    // Move up slope
    if (place_meeting(x + sign(hsp), y, oWall) && place_meeting(x + sign(hsp), y - 1, oWall) && !place_meeting(x + sign(hsp), y - 2, oWall))
        y -= 2;
    else if (place_meeting(x + sign(hsp), y, oWall) && !place_meeting(x + sign(hsp), y - 1, oWall))
        --y;
    
    // Move down slope
    if (!place_meeting(x + sign(hsp), y, oWall) && !place_meeting(x + sign(hsp), y + 1, oWall) && !place_meeting(x + sign(hsp), y + 2, oWall) && place_meeting(x + sign(hsp), y + 3, oWall))
        y += 2;
    else if (!place_meeting(x + sign(hsp), y, oWall) && !place_meeting(x + sign(hsp), y + 1, oWall) && place_meeting(x + sign(hsp), y + 2, oWall))
        ++y; 

    if (!place_meeting(x + sign(hsp), y, oWall))
        x += sign(hsp); 
    else {
        hsp = 0;
        break;
    }
}







//Vertical Collision
if (place_meeting(x,y+vsp,oWall))
{
	while (!place_meeting(x,y+sign(vsp),oWall))
	{
		y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

//Parachute
if (!vsp = 0) && (key_up)
{
	vsp = 1
}


if (!place_meeting(x,y+1,oWall))
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

if (hsp != 0) image_xscale = sign(hsp);

}