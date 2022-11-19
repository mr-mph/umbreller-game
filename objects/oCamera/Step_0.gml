/// @description Update Camera

if (instance_exists(follow))
{
	xTo = follow.x;
	yTo = follow.y;	
}

x += (xTo - x) /10;
y += (yTo - y) /10;

x = clamp (x,view_w * 0.5,room_width-(view_w * 0.5));
y = clamp (y,view_w * 0.5,room_height-(view_h * 0.5));

camera_set_view_pos(cam,x-(view_w * 0.5),y-(view_h * 0.5));

