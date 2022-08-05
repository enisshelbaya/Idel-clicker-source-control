/// @description Revoke access


// This function call will revoke the access right from this phone.
// It will not auto login on startup and will require to sign in again.
// Generates a Social Async callback 'GooglePlayServices_RevokeAccess'
if (global.locked = false)
{
GooglePlayServices_RevokeAccess();
global.locked = true;
}