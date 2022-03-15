/// @description Insert description here
// You can write your code in this editor
switch(async_load[?"type"])
{

	// AdMob_Initialize finished
	case "AdMob_OnInitialized":
		// At this point the AdMob API succeeded to initialize.
		// We use this event to load both the interstitial/rewarded video ads.
		var banner_type = AdMob_Banner_ADAPTIVE;
		var bottom = true;
		AdMob_Banner_Create(banner_type, bottom)
		break;
		// AdMob_Banner_Create() succeeded
	case "AdMob_Banner_OnLoaded":
	// At this point we should now have a banner on the screen.
		break;
	// AdMob_Banner_Create() failed
	case "AdMob_Banner_OnLoadFailed":
	// At this point there was a problem while creating the banner.
	// Here we can add some code to deal with it.
	// NOTE: Don’t try to create a banner here because it can lead to
	// an infinite loop if the banner creation fails constantly.
		break;
}