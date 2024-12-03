/// @description Insert description here
// You can write your code in this editor

var _mousesobre  = position_meeting(mouse_x, mouse_y, self);
var _mouseclick = mouse_check_button_pressed(mb_left);

if (_mousesobre)
{
	if (_mouseclick)
	{
		if (meu_Texto == noone)
		{
			meu_Texto = instance_create_layer(x, y, layer, obj_texto);		
			meu_Texto.texto = texto;
		}
		else
		{
			if(meu_Texto.pag >= meu_Texto.pag_limit)
			{
				instance_destroy(meu_Texto);	
				meu_Texto = noone;
			}
			else
			{
				with(meu_Texto)
				{
					if(letra < tamanhotexto)
					{
						letra = tamanhotexto;
					}
					else
					{
						pag++;
						letra = 0;
					}
				}
			}
		}
	}
}
else
{
	//MOUSE nao ESTA EM CIMA
	if (_mouseclick && meu_Texto != noone)
	{
		instance_destroy(meu_Texto)	;
		meu_Texto = noone;
	}
}