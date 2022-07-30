/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
/// @description AdMob event handlers

// We do an early exit if the 'async_load' map doesn't contain a "type" key.

// We switch on the type of the event being fired
switch(async_load[?"type"])
{

	// AdMob_Initialize finished
	case "AdMob_OnInitialized":
		// At this point the AdMob API succeeded to initialize.
		// We use this event to load both the interstitial/rewarded video ads.
		AdMob_Interstitial_Load();
		AdMob_RewardedVideo_Load();
		break;
	// AdMob_Interstitial_Load succeeded
	case "AdMob_Interstitial_OnLoaded":
		// At this point the interstitial ad succeeded to load.
		break;
	
	// AdMob_Interstitial_Load failed
	case "AdMob_Interstitial_OnLoadFailed":
		// At this point the interstitial ad failed to load.
		//AdMob_Interstitial_Load(); // This can create an infinite loop if load always fails!!
		break;
	
	// AdMob_Interstitial_Show succeeded
	case "AdMob_Interstitial_OnFullyShown":
		// At this point the interstitial ad succeeded to show.
		break;

	// AdMob_Interstitial_Show failed
	case "AdMob_Interstitial_OnShowFailed":
		// At this point the interstitial ad failed to show.
		// Here we use this event to load the interstitial ad again (it could be a load problem).
		AdMob_Interstitial_Load();
		break;
	
	// AdMob_Interstitial got dismissed
	case "AdMob_Interstitial_OnDismissed":
		// At this point the interstitial just got dismissed.
		// Here we use this event to load the next interstitial ad.
		AdMob_Interstitial_Load();
		global.stats.random_vars.ads_watched += 1
		global.stats.random_vars.Currency_amount += (global.stats.random_vars.manager_strength*1500)
		global.stats.random_vars.Total_lifetime_cookies += (global.stats.random_vars.manager_strength*1500)
		room_goto(r_main)
		global.inter_ad_clicked = true
		
		break;
		
	// AdMob_RewardedVideo_Load succeeded
	case "AdMob_RewardedVideo_OnLoaded":
		// At this point the rewarded video succeeded to load.
		break;

	// AdMob_RewardedVideo_Load failed
	case "AdMob_RewardedVideo_OnLoadFailed":
		// At this point the rewarded video failed to load.
		//AdMob_RewardedVideo_Load() // This can create an infinite loop if load always fails!!
		break;
	
	// AdMob_RewardedVideo_Show succeeded
	case "AdMob_RewardedVideo_OnFullyShown":
		// At this point the rewarded video succeeded to show.
		break;
	
	// AdMob_RewardedVideo_Show failed
	case "AdMob_RewardedVideo_OnShowFailed":
		// At this point the rewarded video failed to show.
		// Here we use this event to load the rewarded video again (it could be a load problem).
		AdMob_RewardedVideo_Load();
		break;
	
	// AdMob_RewardedVideo got dismissed
	case "AdMob_RewardedVideo_OnDismissed":
		// At this point the rewarded video just got dismissed.
		// Here we use this event to load the next rewarded video.
		AdMob_RewardedVideo_Load();

		break;
				// RewardedVideo triggered the reward event
	case "AdMob_RewardedVideo_OnReward":
		// At this point the user watched enough of the rewarded video and
		// can be rewarded for it. Here we can add the reward code.
		AdMob_RewardedVideo_Load();
		global.stats.random_vars.ads_watched += 1
		global.stats.random_vars.Currency_amount += (global.stats.random_vars.manager_strength*1500)
		global.stats.random_vars.Total_lifetime_cookies += (global.stats.random_vars.manager_strength*1500)
		global.click=false
		room_goto(r_main)
		global.reward_ad_clicked=true
		alarm[1]=room_speed*30
		break;
		
	
	
}

