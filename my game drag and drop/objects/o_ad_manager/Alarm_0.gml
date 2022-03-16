/// @description Insert description here
// You can write your code in this editor
if ( global.stats.multiplyers.ten_x = 0 && global.golden_shower = false)
{
if(AdMob_Interstitial_IsLoaded())
{
	// Loaded: show interstitial ad
	if (count >=1)
		{
			draw = true
			alarm[2] = room_speed*1
			alarm[0] = room_speed*1
		}
	if (count <= 0)
		{
			count = 5
			AdMob_Interstitial_Show();
			show_debug_message(count)
			alarm[0] = room_speed*100
			draw = false
		}		
}
else
{
	// Not Loaded: load interstitial ad
	AdMob_Interstitial_Load();

}
}
else 
{
alarm[0] = room_speed*100
}