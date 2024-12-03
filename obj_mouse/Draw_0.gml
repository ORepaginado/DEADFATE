/// @description Insert description here
// You can write your code in this editor


if (mouse_check_button(mb_left))
{
	
	draw_sprite(spr_cursorclick, 0, mouse_x, mouse_y);	
}
else
{
	draw_sprite(spr_cursormouse, 0, mouse_x, mouse_y);		
}