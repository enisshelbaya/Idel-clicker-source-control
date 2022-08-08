/// @description Initialize variables


image_speed = 0;
image_index = 0;
image_xscale=view_wport[0]/100;
image_yscale=view_wport[0]/400;
text = "Sign In";

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