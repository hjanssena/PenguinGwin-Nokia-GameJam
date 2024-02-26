if(!sound_started){
	start_time = current_time;
	nokia_play_sound(snd_winScreen);
	sound_started = true;
}

if(current_time > start_time + stay_time){
	room_goto(0);
}