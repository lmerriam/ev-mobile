/// @description Insert description here

// Turn speed
if keyboard_check(vk_right) {
	phy_rotation += turn_spd;
}
if keyboard_check(vk_left) {
	phy_rotation -= turn_spd;	
}

// Inertia
if keyboard_check(vk_up) {
	inertia += 1;
} else {
	inertia -= 1;	
}

inertia = clamp(inertia,0,10);

// Move ship
phy_position_x = x + lengthdir_x(inertia,-phy_rotation);
phy_position_y = y + lengthdir_y(inertia,-phy_rotation);