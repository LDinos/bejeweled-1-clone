function gem_select(gem){
	audio_play_sound(snd_gemselect,0,false); 
	gem.selected = true; //Gem now has to do the spin animation and show that it's selected
	selected_gem = gem //Variable in obj_player that holds the ID of the selected gem
}