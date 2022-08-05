/// @description Update text


if (GooglePlayServices_IsSignedIn())
{
	text = "Sign Out";
}
else
{
	text = "Sign In";
	global.cloud_backup = false;

}
