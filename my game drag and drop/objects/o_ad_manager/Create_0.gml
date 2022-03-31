/// @description Insert description here
// You can write your code in this editor

/// @description Initialize variables
//intializing some varibles for the ad reward button
count = 5
draw = false
global.click = true
global.reward_ad_clicked = false
global.inter_ad_clicked = false
/*
	The first step to configure AdMob with your application/game is to get the
	unique string ad block ids from the google development console for you app.
	In this example we are using all the bellow ad types:
	
		- Banners
		- Interstitial
		- RewardedVideo
		
	In your case you just need the ones you are using, these ids also change from
	Android to iOS so we also provide a code sample that acounts for that.
	
*/
//AdMob_SetTestDeviceId();
var INTERSTITIAL_ID,REWANTED_ID,BANNER_ID;
if(os_type == os_android)
{
	//test ids
	/*
	BANNER_ID = "ca-app-pub-3940256099942544/6300978111";
	INTERSTITIAL_ID ="ca-app-pub-3940256099942544/1033173712";
	REWANTED_ID = "ca-app-pub-3940256099942544/5224354917";	
	*/
	// these are real ids that should be used when the app is getting released 
	BANNER_ID = "ca-app-pub-2634035507329430/3531709413";
	INTERSTITIAL_ID ="ca-app-pub-2634035507329430/4987534961";
	REWANTED_ID = "ca-app-pub-2634035507329430/4915135357";	
	
}
else if(os_type == os_ios)
{ 
	//test ids
	/*
	BANNER_ID = "ca-app-pub-3940256099942544/2934735716";
	INTERSTITIAL_ID = "ca-app-pub-3940256099942544/4411468910";
	REWANTED_ID = "ca-app-pub-3940256099942544/1712485313";	
	*/
	//real ids 
	BANNER_ID = "ca-app-pub-2634035507329430/5774729372";	
	INTERSTITIAL_ID = "ca-app-pub-2634035507329430/2058157280";	
	REWANTED_ID = "ca-app-pub-2634035507329430/4274284756";	
	
}

// The first function to be called is Initialize, this is demanding that it is called in first
// place to initialize the AdMob Extension API and allow for everything to work properly.
AdMob_Initialize();

// After API initialization you should also initialize the ad types your application uses
// with the respective ad block id strings.
AdMob_Banner_Init(BANNER_ID);
AdMob_Interstitial_Init(INTERSTITIAL_ID);
AdMob_RewardedVideo_Init(REWANTED_ID);
alarm[0]=room_speed*60
alarm[1]=room_speed*30
// Now you can configure targeting, the functions bellow will allow you to enable and disable
// special ad filtering for children and under age users (respectively)
//AdMob_Targeting_COPPA(true);
//AdMob_Targeting_UnderAge(true);

// On the new version of this extension you are also able to control the max rating of the
// content displayed on the ads, bellow there is an example with all the possible options available.
//AdMob_Targeting_MaxAdContentRating(AdMob_ContentRating_GENERAL);
//AdMob_Targeting_MaxAdContentRating(AdMob_ContentRating_PARENTAL_GUIDANCE);
//AdMob_Targeting_MaxAdContentRating(AdMob_ContentRating_TEEN);
//AdMob_Targeting_MaxAdContentRating(AdMob_ContentRating_MATURE_AUDIENCE);


// After initial setup all the logic that is related to events should be handled under
// SOCIAL ASYNC EVENT, so check it there to continue the guided tutorial.