/// @description Insert description here
// You can write your code in this editor


if (surface_exists(surfac))
{
	surface_set_target(surfac);
	draw_clear_alpha(c_black, 0);
	
	//desenhando minha surface
	with(obj_player)
	{
		draw_sprite_ext(sprite_index, image_index, x, y+sprite_height, +image_xscale, -image_yscale, image_alpha, c_white, .4);	
	}
	
	
	surface_reset_target();
	draw_surface(surfac, 0, 0);
}
else
{
	surfac = surface_create(room_width, room_height);
}
