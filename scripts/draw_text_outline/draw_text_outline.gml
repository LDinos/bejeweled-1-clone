/// draw_text_outline(x, y, text, textColor, outlineColor);
///@param x
///@param y
///@param text
///@param textColor
///@param outlineColor
function draw_text_outline(xx, yy, text, tcolor, ocolor, thickness) {
 
	draw_set_color(ocolor);
	draw_text(xx - 1*thickness, yy, text);
	draw_text(xx + 1*thickness, yy, text);
	draw_text(xx, yy - 1*thickness, text);
	draw_text(xx, yy + 1*thickness, text);
 
	draw_set_color(tcolor);
	draw_text(xx, yy, text);
	draw_set_color(c_white);


}
