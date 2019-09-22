if(room == rm_outside_start)
{
	if(!global.already_playing_0)
	{
		audio_stop_all();
		audio_play_sound(snd_soundtrack_0, 10, true);
		global.already_playing_0 = true;
	}
}
else
{
	audio_stop_sound(snd_wind);
}
if(room == rm_outside_dead)
{
	if (!final_boss) {
		audio_stop_all();
		final_boss = true;
	}
	if(!global.already_playing_2)
	{
		if(global.soul_collected>=1)
		{
			if (audio_is_playing(snd_cave) || audio_is_playing(snd_soundtrack_1) || audio_is_playing(snd_soundtrack_3)){
				audio_stop_sound(snd_cave);
				audio_stop_sound(snd_soundtrack_1);
				audio_stop_sound(snd_soundtrack_3);
			}
			audio_play_sound(snd_wind, 4, true);
			audio_play_sound(snd_soundtrack_2, 10, true);
			global.already_playing_2 = true;
		}
	}
}
if(room != rm_outside_start && room != rm_outside_dead)
{
	if(!global.already_playing_4)
	{
		audio_stop_sound(snd_wind);
		if (!audio_is_playing(snd_cave)) {
			audio_play_sound(snd_cave, 4, true);
		}
		global.already_playing_4 = true;
	}
}
if(room == rm_boss)
{
	if(final_boss)
	{
		if(!global.already_playing_3)
		{
			audio_stop_all();
			audio_play_sound(snd_soundtrack_3, 10, true);
			global.already_playing_3 = true;
		}
	}
	else
	{
		if(!global.already_playing_1)
		{
			audio_stop_all();
			audio_play_sound(snd_soundtrack_1, 10, false);
			global.already_playing_1 = true;
		}
	}
}
