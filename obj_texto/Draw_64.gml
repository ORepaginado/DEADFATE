/// @description Insert description here
// You can write your code in this editor


pag_limit = array_length_1d(texto) - 1;


//desenhando a caixa de dialogo
draw_sprite(spr_caixadedialogo, -1, 16, 354);

//digitando meu texto
tamanhotexto = string_length(texto[pag]);

if (letra <= tamanhotexto)
{
	palavra = string_copy(texto[pag], 1, letra);
	letra++;
}	

//desenhando o texto
draw_set_font(fnt_dialogos);
draw_text_ext(72, 374, palavra, 30, 700 -10);
draw_set_font(-1);