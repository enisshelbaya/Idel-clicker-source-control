/// @description Initialize variables
if (GooglePlayServices_IsSignedIn())
{
	// This function call will sign out from the google play account.
	// Generates a Social Async callback 'GooglePlayServices_SignOut'
	global.locked = false 
}
else
{
	// This function call will express an intent to login to the user account.
	// It will present the user with a window to select account (can succeed or fail)
	// Generates a Social Async callback 'GooglePlayServices_SignIn'
	global.locked = true
	
}

if (global.locked = false)
		{
		GooglePlayServices_SavedGames_Load(true)
		}
else
		{
			text = "Need to Be Signed In";
			image_index = 2;
		}
uniqueName = "uniqueName"
description = "description"
image_speed = 0;
image_index = 0;
image_xscale=view_wport[0]/99.5;
image_yscale=view_wport[0]/398;


		
