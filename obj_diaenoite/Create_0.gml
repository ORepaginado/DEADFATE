/// @description Insert description here
// You can write your code in this editor

surf = noone;


momento = 0;


dia_noite = function()
{
	
	momento = (sin(0.01 * get_timer() / 1000000) + 1) /2;
	
	
	if(surface_exists(surf))
	{
		
		//desenhando na minha surface
		
		surface_set_target(surf);
		
		
		//garantindo que a surface ta limpa
		draw_clear_alpha(c_black, 0);
		
		draw_set_color(c_black);
		draw_set_alpha(min(momento, 0.87));
		draw_rectangle(0, 0, room_width, room_height, false);
		draw_set_alpha(1);
		draw_set_color(-1);
		
		
		//desenhando o buraco da iluminacao
		if (instance_exists(obj_ilumina2_)) and (obj_ilumina2_poste) and (obj_player) and (obj_ilumina2__lampadaquarto)
		{
			//ILUMINAÇÂO LAMPIÂO
			with(obj_ilumina2_)
			{
				gpu_set_blendmode(bm_subtract);
				
				
				var _tamanho = 28 + variacao;
				
				//desenhando a luz
				draw_set_alpha(.8);
				draw_circle(x, y, _tamanho, false);	
				//desenhando a segunda luz
				draw_set_alpha(.6);
				draw_circle(x, y, _tamanho  + 3, false);
				//desenhando a terceira luz
				//desenhando a segunda luz
				draw_set_alpha(.3);
				draw_circle(x, y, _tamanho + 6, false);
				draw_set_alpha(1);
				
				
				
				gpu_set_blendmode(bm_normal);
			}
			
			
			
			//ILIMINAÇÂO POSTE
			with(obj_ilumina2_poste)
			{
				gpu_set_blendmode(bm_subtract);
				
				
				var _tamanhoo = 15 + variacao;
				
				//desenhando a luz
				draw_set_alpha(.8);
				draw_circle(x, y, _tamanhoo, false);	
				//desenhando a segunda luz
				draw_set_alpha(.6);
				draw_circle(x, y, _tamanhoo  + 3, false);
				//desenhando a terceira luz
				//desenhando a segunda luz
				draw_set_alpha(.3);
				draw_circle(x, y, _tamanhoo + 6, false);
				draw_set_alpha(1);
				
				
				
				gpu_set_blendmode(bm_normal);
			}
			
			
			//ILUMINAÇÂO LAMPADA QUARTO
				with(obj_ilumina2__lampadaquarto)
			{
				gpu_set_blendmode(bm_subtract);
				
				
				var _tamanhoo = 12 + variacao;
				
				//desenhando a luz
				draw_set_alpha(.8);
				draw_circle(x, y, _tamanhoo, false);	
				//desenhando a segunda luz
				draw_set_alpha(.6);
				draw_circle(x, y, _tamanhoo  + 3, false);
				//desenhando a terceira luz
				//desenhando a segunda luz
				draw_set_alpha(.3);
				draw_circle(x, y, _tamanhoo + 6, false);
				draw_set_alpha(1);
				
				
				
				gpu_set_blendmode(bm_normal);
			}
			
			
			//ILIMINAÇÂO PLAYER
			if (keyboard_check(ord("F")))
			{
				with(obj_player)
				{
					gpu_set_blendmode(bm_subtract);
				
				
					var _tamanhoo3 = 20 + variacao;
				
					//desenhando a luz
					draw_set_alpha(.8);
					draw_circle(x, y, _tamanhoo3, false);	
					//desenhando a segunda luz
					draw_set_alpha(.6);
					draw_circle(x, y, _tamanhoo3 + 3, false);
					//desenhando a terceira luz
					//desenhando a segunda luz
					draw_set_alpha(.3);
					draw_circle(x, y, _tamanhoo3 + 6, false);
					draw_set_alpha(1);
				
				
				
					gpu_set_blendmode(bm_normal);
				}
			}
			
		}
		
		
		//parei de desenhar na minha surface
		surface_reset_target();
		
		draw_surface(surf, 0, 0);
	}	
	else
	{
		surf = surface_create(room_width, room_height);
		
	}
	
}





