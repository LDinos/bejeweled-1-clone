/// @description I am the sparks on gems after hint is pressed
pt_sys = part_system_create()
pt_type = part_type_create()
part_system_depth(pt_sys,depth-1)
part_type_sprite(pt_type,spr_sparkles,true,false,false)
part_type_life(pt_type,30,30)
part_type_alpha3(pt_type,1,1,0)
part_type_blend(pt_type,true)
part_type_scale(pt_type,1.5,1.5)
sparkle_count = 10

alarm[0] = 1