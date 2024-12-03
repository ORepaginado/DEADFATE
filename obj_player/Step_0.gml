/// @description Insert description here
// You can write your code in this editor

maquina_estados();

variacao = random_range(-.5, .5);


#region colisoes
//COLISAO HORIZONTAL
if (place_meeting(x + hspd, y, obj_colisao))
{
	while !place_meeting(x + sign(hspd), y, obj_colisao)
	{
		x += sign(hspd);
	}
	hspd = 0;
}
//COLISAO HORIZONTAL FIM

x += hspd;




//COLISAO VERTICAL
if place_meeting(x, y + vspd, obj_colisao)
{
	while !place_meeting(x, y + sign(vspd), obj_colisao)
	{
		y += sign(vspd);	
	}
	
	vspd = 0;
}
//COLISAO VERTICAL FIM

y += vspd;

#endregion









