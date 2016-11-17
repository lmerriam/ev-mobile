/// @description Draw the background
// You can write your code in this editor

var cam_x = camera_get_view_x(view_camera[0]);
var cam_y = camera_get_view_y(view_camera[0]);

for (var i=0; i<200; i++) {
	var stardepth = starray[i,2];
	var xx = starray[i,0]+(cam_x*(1-stardepth));
	var yy = starray[i,1]+(cam_y*(1-stardepth));
	draw_sprite_ext(bg_stars, 0, xx, yy, stardepth, stardepth, 0, c_white, stardepth);
}

