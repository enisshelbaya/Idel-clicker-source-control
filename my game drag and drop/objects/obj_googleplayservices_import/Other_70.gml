/// @description Insert description here
// You can write your code in this editor


show_debug_message("################### async_load is " + json_encode(async_load));
switch(async_load[? "type"])
{

	case "GooglePlayServices_SignIn":
		GooglePlayServices_SavedGames_Load(true);
		break;
	case "GooglePlayServices_SavedGames_ShowSavedGamesUI_OnExit":
		GooglePlayServices_SavedGames_Load(true);
		break;

	case "GooglePlayServices_SavedGames_CommitNew":

		if (!async_load[? "success"]) exit;

		GooglePlayServices_SavedGames_Load(true);
		break;

	case "GooglePlayServices_SavedGames_Load":
		

		if(!async_load[?"success"]){ 
			
			GooglePlayServices_SavedGames_Load(true);
			exit;
		}
			
		if(async_load[?"snapshots"] == "[]"){
			
			onPlayerDeleteSave();
			var path = "save_thumbnail.png"
			
			sprite_save_w(Spr_YoYo_button, 0, path);

			var data = global.stats;
			
			var jsonData = json_stringify(data);
			
			GooglePlayServices_SavedGames_CommitNew(uniqueName, description, jsonData, path);
			
		}
		else
		{
			GooglePlayServices_SavedGames_Open(obj_savegame.uniqueName);
		}
		
		break;

	case "GooglePlayServices_SavedGames_Open":
		
		if (!async_load[? "success"])
		{
			GooglePlayServices_SavedGames_Load(true);
			return;
		}

		try{
			global.cloud_save = json_parse(async_load[? "data"]);
		}
		break;
	
	case "GooglePlayServices_SavedGames_Delete":

	case "GooglePlayServices_SavedGames_CommitAndClose":

		if(!async_load[? "success"]) exit;

		alarm[0] = 90;
		break;
	
	case "GooglePlayServices_SavedGames_DiscardAndClose":
	
		if (!async_load[? "success"]) exit;

	break

}

