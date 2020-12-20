// Drawing covers for outside of the board, for non-proportional screens
var cx = camera_get_view_x(view_camera[0])
var cy = camera_get_view_y(view_camera[0])
var sx = cx+camera_get_view_width(view_camera[0])
var sy = cy+camera_get_view_height(view_camera[0])
draw_rectangle_color(cx,cy,0,sy,0,0,0,0,0);
draw_rectangle_color(720,cy,sx,sy,0,0,0,0,0);
draw_sprite_stretched(spr_platform,0,0,cy,720,-cy+4);
draw_sprite_stretched(spr_platform,1,0,1276,720,sy-1280);


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