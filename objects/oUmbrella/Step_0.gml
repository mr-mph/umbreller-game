if (sign(floor(oPlayer.vsp)) < 0) {
// Airborne sprite	

} else if (sign(floor(oPlayer.vsp)) > 0) {
// Airborne sprite
}
else if (oPlayer.hsp == 0) && (!oPlayer.isCollidingCeiling) {
	image_speed = 1
	sprite_index = sUmbr_Idle
} else if (oPlayer.vsp == 0) && (!oPlayer.isCollidingCeiling){
	image_speed = 1
	sprite_index = sUmbr_Walk;
}

if (oPlayer.hsp != 0) image_xscale = sign(oPlayer.hsp);