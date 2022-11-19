/// @description Set up camera
cam = view_camera[0];
follow = oPlayer;

// This lets us focus the CENTER to the player, instead of the top left corner
// By halving the full length and width.

view_w = camera_get_view_width(cam);
view_h = camera_get_view_height(cam);
view_x = camera_get_view_x(cam);
view_y = camera_get_view_y(cam);


xTo = xstart;
yTo = ystart;
