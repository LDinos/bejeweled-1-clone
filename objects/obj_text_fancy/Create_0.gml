/// @description I am the text that appears when the voice talks
str = "-"			//Text
alpha = 0			//Text Opacity
alarm[0]= 1			//Start Fading in

//Shader related variables\\
wave_speed = shader_get_uniform(shd_wave,"wave_speed")
wave_distortion = shader_get_uniform(shd_wave,"wave_distortion")
wave_amount = shader_get_uniform(shd_wave,"wave_amount")
time = shader_get_uniform(shd_wave,"time")
resolution = shader_get_uniform(shd_wave,"resolution")
res_x = room_width
res_y = room_height
timer = 0 //Time used in the shader wave function

surf = surface_create(room_width,room_height) //Text surface in which shader will be applied to