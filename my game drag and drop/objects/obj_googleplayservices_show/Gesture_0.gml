/// @description Show SavedGamesUI



// This function call will show the Google Play Services, Saved Games UI popup.
// You can:
// - give it a title
// - allow add
// - allow delete
// - provide a max number of allowed save slots
if (global.locked = false)
{
GooglePlayServices_SavedGames_ShowSavedGamesUI("Saved Game", false, true, 1);
}