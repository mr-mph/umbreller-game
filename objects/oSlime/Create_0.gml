/// @description Setting up the variables and state machines

hsp = 0;
vsp = 0;
grv = 0.3
walksp = 2;

multiplier_walk = 1;
multiplier_run = 1.5;

collide_list = oWall

function OnGround(_obj)
{
	if place_meeting(x,y+1,_obj)
	{
		return true;
	}
	else return false;
}

OnGround(collide_list);