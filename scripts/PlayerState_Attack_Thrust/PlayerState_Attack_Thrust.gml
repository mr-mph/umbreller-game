function PlayerState_Attack_Thrust(){

hsp = 0;
vsp = 0;


// Start
if (sprite_index != sPlayer_Thrust)
{
	sprite_index = sPlayer_Thrust;
	image_index = 0;
	ds_list_clear(hitByAttack);
}

// Check for hits
mask_index = hb_thrust
var hitByAttackNow = ds_list_create()
var hits = instance_place_list(x,y,oSlime,hitByAttackNow,false);

if (hits > 0)
{
	for (var i = 0; i < hits; i++)
	{
		// If not hit by this attack yet
		var hitID = hitByAttackNow [| i];
		if (ds_list_find_index(hitByAttack, hitID) = -1)
		{
			ds_list_add(hitByAttack, hitID);
			with(hitID)
			{
				//ENEMY DAMAGE ANIMATIONS
			}
		}
	}
}
ds_list_destroy(hitByAttackNow);
mask_index = sPlayer_Idle

if (animation_end())
{
	sprite_index = sPlayer_Idle
	state = PLAYERSTATE.FREE

}
}