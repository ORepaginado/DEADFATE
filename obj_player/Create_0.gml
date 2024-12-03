/// @description Insert description here
// You can write your code in this editor

event_inherited();

estado = "movendo";

window_set_cursor(cr_none);

spd = 2;

vspd = 0;

hspd = 0;

cima = 0;

baixo = 0;

esq = 0;

dire = 0;

direcao = 0;

variacao = 1;






controles = function()
{
	
	
	cima = keyboard_check(ord("W")) or keyboard_check(vk_up); //CIMA

	baixo = keyboard_check(ord("S"))  or keyboard_check(vk_down); //BAIXO

	esq = keyboard_check(ord("A")) or keyboard_check(vk_left); //ESQUERDA
	
	dire = keyboard_check(ord("D")) or keyboard_check(vk_right); //DIREITA
	
	//hspd = (dire - esq) * spd
	//vspd = (baixo - cima) * spd;
	
	var _dir = point_direction(0, 0, dire - esq, baixo - cima);
	
	if(dire xor esq or baixo xor cima)
	{
		hspd = lengthdir_x(spd, _dir);
		vspd = lengthdir_y(spd, _dir);
	}
	else
	{
		hspd = 0;
		vspd = 0;
	}
}

maquina_estados = function()
{
	switch(estado)
	{
	
		
		case "parado":
		{
			audio_stop_sound(snd_passos);
			controles();
			muda_sprite();
			image_speed = 0;	
			
			if (dire xor esq or baixo xor cima)
			{
				
				estado = "movendo";	
				
			}
			
			
			break
		}
		
		case "movendo":
		{
			
			controles();
			muda_sprite();
			image_speed = 1;	
			
			
			if (hspd == 0 and vspd == 0)
			{	
				estado = "parado";
				audio_stop_sound(snd_passos);
			}
			break;
		}
		
	}
}

muda_sprite = function()
{
	if (dire xor esq or baixo xor cima)
	{
		direcao = point_direction(0, 0, dire - esq, baixo - cima);	
	}
	switch(direcao)
	{
		case 0: sprite_index = spr_playerlado_dire; break;
		case 90: sprite_index = spr_playercostas; break;
		case 180: sprite_index = spr_playerlado_esq; break
		case 270: sprite_index = spr_player; break
		
	}
}



