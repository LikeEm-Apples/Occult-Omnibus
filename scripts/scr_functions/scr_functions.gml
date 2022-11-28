// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_as_gui(sprite, subimg, x, y, xscale, yscale) {
	draw_sprite_ext(sprite, subimg, camera_get_view_x(view_camera[0])+x, camera_get_view_y(view_camera[0])+y, xscale, yscale, 0, -1, 1);
}

function print() {
    var _str = "";

    for (var i = 0; i < argument_count; i ++)
    {
        _str += string(argument[i]) + ", ";
    }

    show_debug_message(_str);
}

function animate_range(min,max) {
	if (image_index < min) {image_index = min};
	if (image_index > max + 0.99) {image_index = min};
}

function animate_between() {
	if (current < argument_count) {
		if (image_index < argument[current]) {
			image_index = argument[current];
		}
		if (image_index > argument[current]+0.99) {
			image_index = argument[current];
			current += 1;
		}
	}
	else {
		current = 0;
		image_index = argument[current];
	}
}