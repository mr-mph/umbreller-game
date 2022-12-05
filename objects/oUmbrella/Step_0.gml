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



x = clamp(x, oPlayer.x - 5, oPlayer.x + 5)
y = clamp(y, oPlayer.y - 3, oPlayer.y + 3)

x = lerp(x, oPlayer.x, 0.2);
y = lerp(y, oPlayer.y, 0.4);

if (oPlayer.image_xscale == 1) {
	if (place_meeting(x,y,oPlayer.collide_list)) {
		image_angle--;
	} else {
		while (!place_meeting(x,y,oPlayer.collide_list) && oPlayer.OnGround(oPlayer.collide_list)) {
			image_angle++;
		}
	}
} else {
	if (place_meeting(x,y,oPlayer.collide_list)) {
		image_angle++;
	} else {
		while (!place_meeting(x,y,oPlayer.collide_list ) && oPlayer.OnGround(oPlayer.collide_list)) {
			image_angle--;
		}
	}
}

visible = oPlayer.umbrella_show