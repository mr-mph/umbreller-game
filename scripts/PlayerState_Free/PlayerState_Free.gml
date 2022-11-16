// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function PlayerState_Free(){

Walk();
Jump();

//Horizontal Collisions
if (place_meeting(x+hsp,y,oWall))
{
	while (!place_meeting(x+sign(hsp),y,oWall))
	{
		x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

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