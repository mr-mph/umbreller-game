/// @description Update Camera

view_w = camera_get_view_width(cam);
view_h = camera_get_view_height(cam);
view_x = camera_get_view_x(cam);
view_y = camera_get_view_y(cam);

xTo = follow.x - view_w /2;
yTo = follow.y - view_h /2;

instance_deactivate_layer("Enemies");

var _zone = oPlayer.cam_zone;
if (_zone != noone) {
	xTo = clamp(xTo, _zone.bbox_left, _zone.bbox_right - view_w);
	yTo = clamp(yTo, _zone.bbox_top, _zone.bbox_bottom - view_h);
}

x = lerp(x, xTo, lerp_spd);
y = lerp(y, yTo, lerp_spd);

camera_set_view_pos(cam, x, y);

instance_activate_region(view_x - 64, view_y - 64, view_w + 128, view_h + 128, true);

