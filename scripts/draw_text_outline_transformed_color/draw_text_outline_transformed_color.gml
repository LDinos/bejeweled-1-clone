function draw_text_outline_transformed_color(xx, yy, text, xscale, yscale, tcolor1, tcolor2, tcolor3, tcolor4, ocolor, alph, thickness) {
 
	draw_text_transformed_color(xx- 1*thickness, yy, text, xscale, yscale,0, ocolor,ocolor,ocolor,ocolor,alph);
	draw_text_transformed_color(xx+ 1*thickness, yy, text, xscale, yscale,0, ocolor,ocolor,ocolor,ocolor,alph);
	draw_text_transformed_color(xx, yy- 1*thickness, text, xscale, yscale,0, ocolor,ocolor,ocolor,ocolor,alph);
	draw_text_transformed_color(xx, yy+ 1*thickness, text, xscale, yscale,0, ocolor,ocolor,ocolor,ocolor,alph);
 

	draw_text_transformed_color(xx, yy, text,xscale,yscale,0,tcolor1,tcolor2,tcolor3,tcolor4,alph);



}
