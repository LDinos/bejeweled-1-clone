/// @description
if !surface_exists(surf) surf = surface_create(room_width,room_height)

draw_set_font(fnt_text1)
surface_set_target(surf)
	draw_text_outline_transformed_color(x,y,str,2.5,2.5,c_yellow,c_green,c_yellow,c_green,c_black,alpha,4)
surface_reset_target()
if shader_is_compiled(shd_wave) 
{
	shader_set(shd_wave)
	shader_set_uniform_f(wave_amount,15)
	shader_set_uniform_f(wave_distortion,50)
	shader_set_uniform_f(wave_speed,3)
	shader_set_uniform_f(time,timer)
	shader_set_uniform_f(resolution,res_x,res_y)
}
	draw_surface(surf,0,0)
shader_reset()