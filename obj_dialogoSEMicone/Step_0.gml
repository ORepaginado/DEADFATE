/// @description Insert description here
// You can write your code in this editor

var _mousesobre = position_meeting(mouse_x, mouse_y, self);
var _mouseclick = mouse_check_button_pressed(mb_left);

if (_mousesobre)
{
	if (_mouseclick)
	{
		if (meu_Textoo == noone)
		{
			meu_Textoo = instance_create_layer(x, y, layer, obj_textoDescricoes);		
			meu_Textoo.texto = texto;
		}
		else
		{
			if(meu_Textoo.pag >= meu_Textoo.pag_limit)
			{
				instance_destroy(meu_Textoo);	
				meu_Textoo = noone;
			}
			else
			{
				with(meu_Textoo)
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
	if (_mouseclick && meu_Textoo != noone)
	{
		instance_destroy(meu_Textoo)	;
		meu_Textoo = noone;
	}
}