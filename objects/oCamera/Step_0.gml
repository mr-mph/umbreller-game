/// @description Update Camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;	
}


x += (xTo - x) /10;
y += (yTo - y) /10;


var _zone = oPlayer.cam_zone;
if (_zone != noone) {
	x = clamp(x, _zone.bbox_left, _zone.bbox_right - view_w /2);
	y = clamp(y, _zone.bbox_top, _zone.bbox_bottom - view_h /2);
}

camera_set_view_pos(cam, x-(view_w /2), y-(view_h /2));