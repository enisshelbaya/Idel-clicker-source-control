/// @description Insert description here
// You can write your code in this editor
if(global.click = true)
{
if(AdMob_RewardedVideo_IsLoaded())
{
	// Loaded: show rewarded video ad
    AdMob_RewardedVideo_Show()
}
else
{
	// Not Loaded: load rewarded video ad
	AdMob_RewardedVideo_Load()

}
}
show_debug_message(global.click)