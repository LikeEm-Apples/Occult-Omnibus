/// @desc ??

vertical =  keyboard_check(ord("S")) - keyboard_check(ord("W"));
horizontal = keyboard_check(ord("D")) - keyboard_check(ord("A"));

if (vertical = 1 and horizontal = 0) {
	animate_range(skin*10+4,skin*10+5);
	lastdir = 2;
}
if (vertical = -1 and horizontal = 0) {
	animate_range(skin*10+7,skin*10+8);
	lastdir = 0;
}
if (horizontal = 1 or horizontal = 1 and vertical != 0) {
	animate_between(skin*10+1,skin*10+6);
	lastdir = 1;
}
if (horizontal = -1 or horizontal = -1 and vertical != 0) {
	animate_between(skin*10+3,skin*10+9);
	lastdir = 3;
}

if (vertical = 0 and horizontal = 0) {
	switch (lastdir) {
		case 0:
			image_index = skin*10+2;
		break;
		case 1:
			image_index = skin*10+1;
		break;
		case 2:
			image_index = skin*10;
		break;
		case 3:
			image_index = skin*10+3;
		break;
	}
}

if (place_meeting(x+horizontal,y,obj_Wall)) {
	while (!place_meeting(x+sign(horizontal),y,obj_Wall)) {
		x = x + sign(horizontal);
	}
	horizontal = 0;
}
if (place_meeting(x,y+vertical,obj_Wall)) {
	while (!place_meeting(x,y+sign(vertical),obj_Wall)) {
		y = y + sign(vertical);
	}
	vertical = 0;
}

x += horizontal;
y += vertical;