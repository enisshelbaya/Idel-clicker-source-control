/// @description Insert description here
// You can write your code in this editor
if (global.cloud_backup = true)
{
var path = "save_thumbnail.png"

sprite_save_w(save_thumnail, 0, path);

var data = global.stats;

var jsonData = json_stringify(data);

if(GooglePlayServices_IsSignedIn()){
	GooglePlayServices_SavedGames_CommitAndClose(Obj_GooglePlayServices_Save.uniqueName, Obj_GooglePlayServices_Save.description, jsonData, path);
}
}	