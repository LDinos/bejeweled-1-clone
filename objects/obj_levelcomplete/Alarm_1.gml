/// @description LEVEL UP sound
audio_play_sound(snd_lvlup,0,false)
obj_board.board_anim_alpha+=0.05
audio_play_sound(snd_flames,0,false)
alarm[0] = -1