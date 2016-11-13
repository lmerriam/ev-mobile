/// @description Insert description here

// Get the direction keys
right_key = keyboard_check(vk_right);
left_key = keyboard_check(vk_left);
up_key = keyboard_check(vk_up);
down_key = keyboard_check(vk_down);

// Calculate x and y axis direction
x_axis = right_key - left_key;
y_axis = down_key - up_key;

// Check whether any direction key is pressed
if (x_axis == 0 and y_axis == 0) key_pressed = false else key_pressed = true;

// Set target x and y
target_x = x + x_axis;
target_y = y + y_axis;

// Increment inertia and calculate new target angle, only if user is moving
if (key_pressed) {
	target_angle = point_direction(x,y,target_x,target_y);
	inertia += .2;
} else {
	inertia -= .2;
}

// Clamp inertia
inertia = clamp(inertia,0,7);

// Get the difference between the current angle and the target angle
angle_diff = angle_difference(image_angle,target_angle);

// Rotate according to the difference
phy_rotation += abs(angle_diff) * .01 * inertia * sign(angle_diff);


phy_position_x = x + lengthdir_x(inertia,image_angle);
phy_position_y = y + lengthdir_y(inertia,image_angle);

