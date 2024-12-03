/// @description Insert description here
// You can write your code in this editor

if(segyeplayer != noone)
{
	xTo = segyeplayer.x;
	yTo = segyeplayer.y;
}	

x += (xTo - x)/25;

y += (yTo - y)/25;

camera_set_view_pos(view_camera[0], x - (camWidth*0.22), y - (camHeight*0.22));