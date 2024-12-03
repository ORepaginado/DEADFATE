/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_halign(1);
draw_set_valign(1);

draw_set_font(fnt_botao);

draw_set_color(cor_texto);
draw_text(x, y, texto);

draw_text_transformed(x, y, texto, escala_textox, escala_textoy, 0);

draw_set_halign(-1);
draw_set_valign(-1);
draw_set_font(-1);
draw_set_color(-1);