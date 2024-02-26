/// @description Insert description here
// You can write your code in this editor
if(!crashed){
	alarm[0]=-1;
	nokia_play_sound(snd_death);
	mask_index=spr_empty;
	sprite_index=spr_penguinoCrash;
	crashed=true;
	alarm[1]=180;
	dead = true;
}