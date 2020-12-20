/// draw_text_outline(x, y, text, textColor, outlineColor, alpha);
///@param x
///@param y
///@param text
///@param textColor
///@param outlineColor
///@param alpha
function draw_text_outline_alpha(xx, yy, text, tcolor, ocolor, alph, thickness) {
 
	alph = clamp(alph,0,1);
	draw_text_color(xx- 1*thickness, yy, text,ocolor,ocolor,ocolor,ocolor,alph);
	draw_text_color(xx+ 1*thickness, yy, text,ocolor,ocolor,ocolor,ocolor,alph);
	draw_text_color(xx, yy- 1*thickness, text,ocolor,ocolor,ocolor,ocolor,alph);
	draw_text_color(xx, yy+ 1*thickness, text,ocolor,ocolor,ocolor,ocolor,alph);
 

	draw_text_color(xx, yy, text,tcolor,tcolor,tcolor,tcolor,alph);



}
