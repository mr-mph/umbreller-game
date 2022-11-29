/// @description Setting up the variables and state machines

isCollidingCeiling = false;
hsp = 0;
vsp = 0;
grv = 0.3
walksp = 2;
coyote_time = 0;
coyote_time_max = 5;

multiplier_walk = 1;
multiplier_run = 1.5;

collide_list = oWall
cam_zone = noone;


function OnGround(_obj)
{
	if place_meeting(x,y+1,_obj)
	{
		return true;
	}
	else return false;
}

function CoyoteTime()
{
	if coyote_time > 0 coyote_time --;
	if OnGround(collide_list)
	{
		coyote_time = coyote_time_max
	}
}

OnGround(collide_list);

state = PLAYERSTATE.FREE;


enum PLAYERSTATE
{
	FREE,
	ATTACK_THRUST,
	ATTACK_DOWNTHRUST
}



