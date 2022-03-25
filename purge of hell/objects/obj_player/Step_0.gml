//movement
left_key = (keyboard_check(vk_left));
right_key = (keyboard_check(vk_right));
up_key = (keyboard_check(vk_up));
down_key = (keyboard_check(vk_down));


//collision
xspd = (right_key - left_key)*movespd;
yspd = (down_key - up_key)*movespd;


if place_meeting(x + xspd,y, wall) = true
	{
		xspd = 0
	}
 if place_meeting(x,y + yspd, wall) = true
	{
		yspd = 0
	}
	
	x+= xspd
	y+= yspd
	
	//directional stuff
	if (yspd==0 && xspd==0){
//idle
image_index = 0;
image_speed = 0;

}
if (yspd < 0){
//up
sprite_index= spr_player_up
image_speed= 1
}
if (yspd > 0){
//down
sprite_index = spr_player_down
image_speed = 1
}
if (xspd > 0){
//right
sprite_index = spr_player_right
image_speed= 1
}
if (xspd < 0){
//left
sprite_index = spr_player_left
image_speed= 1
}

	