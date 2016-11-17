/// @description Check for room transition
// You can write your code in this editor
var dx = 0;
var dy = 0;
 
if (Player.x >= room_width) {
	dx = 1;
	Player.x = 32;
} else if (Player.x <= 0) {
	dx = -1;
	Player.x = room_width - 32;
} else if (Player.y >= room_height) {
	dy = 1;
	Player.y = 32;
} else if (Player.y <= 0) {
	dy = -1;
	Player.y = room_width - 32;
}

if (dx !=0 or dy !=0) {
	var current_coords = string_digits(room_get_name(room));
	var current_x = real(string_copy(current_coords,1,2));
	var current_y = real(string_copy(current_coords,3,2));
	var new_x = current_x + dx;
	if (new_x < 10) new_x = "0" + string(new_x);
	var new_y = current_y + dy;
	if (new_y < 10) new_y = "0" + string(new_y);

	var new_room = "sector_" + string(new_x) + "_" + string(new_y);
	show_message(new_room);
	room_goto(asset_get_index(new_room));
}