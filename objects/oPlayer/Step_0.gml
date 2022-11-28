key_left = keyboard_check(vk_left) || keyboard_check(ord("A"));
key_right = keyboard_check(vk_right) || keyboard_check(ord("D"));
key_up = keyboard_check(vk_up) || keyboard_check(ord("W"));
key_down = keyboard_check(vk_down) || keyboard_check(ord("S"));
key_jump = keyboard_check_pressed(ord("X")) || keyboard_check_pressed(ord("K"));
key_jump_held = keyboard_check(ord("X")) || keyboard_check(ord("K"));
key_attack = keyboard_check(ord("Z"));
key_run = keyboard_check(vk_shift);
cam_zone = noone;

function Walk()
{
	var _move = key_right - key_left;

	var _multiplier = multiplier_walk;
	if (key_run) && (!key_up) _multiplier = multiplier_run;
	
	hsp = _move * walksp * _multiplier;

	vsp = vsp + grv;
	
}


function Jump()
{
	if (vsp < 0) && (!key_jump_held) vsp = max(vsp, -2);
	CoyoteTime();

	if (key_jump) and coyote_time > 0
	{
		coyote_time = 0;
		vsp = -8;
	}
}



switch (state)

{
	case PLAYERSTATE.FREE: PlayerState_Free(); break;
	case PLAYERSTATE.ATTACK_THRUST: PlayerState_Attack_Thrust(); break;
	case PLAYERSTATE.ATTACK_DOWNTHRUST: PlayerState_Attack_Downthrust(); break;
	
	
}