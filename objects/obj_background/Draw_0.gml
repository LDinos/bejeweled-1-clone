/// @description
draw_self()

//DRAW SCORE
draw_set_font(fnt_score)
//draw_set_halign(fa_center)
//draw_set_valign(fa_middle)
draw_text_outline_alpha(x+COORD_SCORE_X,y+COORD_SCORE_Y,global.late_score,color,c_black,1,1)

//DRAW LEVEL
draw_set_font(fnt_text1)
draw_text_color(x+COORD_LEVEL_X, y+COORD_LEVEL_Y, global.level,c_black,c_black,c_black,c_black,1)