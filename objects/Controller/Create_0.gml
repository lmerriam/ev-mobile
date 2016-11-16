/// @description Set up game
// You can write your code in this editor

sector = "0000";
starray = [];

for(var i = 0; i < 200; i++) {
	var xx = random_range(0,room_width);
	var yy = random_range(0,room_height);
	var stardepth = random_range(.2,1);
	starray[i,0] = xx;
	starray[i,1] = yy;
	starray[i,2] = stardepth;
}