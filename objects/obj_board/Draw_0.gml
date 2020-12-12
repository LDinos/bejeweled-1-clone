/// @description
draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,colors[color_index],1) //draw me


if (board_anim_alpha > 0) // When we are changing levels
{
	//Next color and board appearing
	var c = color_index+1
	if (c > 3) c = 0
	draw_sprite_part_ext(sprite_index,image_index+1,0,0,sprite_width,lerp(0,sprite_height,board_anim_alpha),x-GRID,y-GRID,1,1,colors[c],1)
	
	//Moving Tiled flames appearing (fake tiling using a 'for' loop)
	var offset = irandom(100)
	for(var i = 0; i < 5; i++) draw_sprite(spr_flames,0,x-GRID +i*192 - offset,lerp(y-GRID,y+sprite_height-GRID,board_anim_alpha))

	if (board_anim_alpha < 1) board_anim_alpha += 0.01
	else //Finished the level complete animation
	{
		board_anim_alpha = 0;
		color_index++
		if (color_index > array_length(colors)-1) color_index = 0
		image_index++	
		with(obj_board) gem_initial_spawn()
	}
}
