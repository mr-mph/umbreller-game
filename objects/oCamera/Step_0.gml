/// @description Update Camera


xTo = follow.x - view_w /2;
yTo = follow.y - view_h /2;


var _zone = oPlayer.cam_zone;
if (_zone != noone) {
	xTo = clamp(xTo, _zone.bbox_left, _zone.bbox_right - view_w);
	yTo = clamp(yTo, _zone.bbox_top, _zone.bbox_bottom - view_h);
}

x = lerp(x, xTo, lerp_spd);
y = lerp(y, yTo, lerp_spd);


camera_set_view_pos(cam, x, y);