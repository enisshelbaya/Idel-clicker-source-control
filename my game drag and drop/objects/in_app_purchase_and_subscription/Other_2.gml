/// @description Insert description here
// You can write your code in this editor
// Prepare some variables for use in the IAP checks
global.IAP_Enabled = false;
global.IAP_PurchaseID[0] = "diamonds_50";
global.IAP_PurchaseID[1] = "diamonds_100";
global.IAP_PurchaseID[2] = "diamonds_500";
global.IAP_PurchaseID[3] = "diamonds_1000";
global.IAP_PurchaseID[4] = "diamonds_1500";
global.IAP_PurchaseID[5] = "diamonds_5000";
global.IAP_PurchaseID[6] = "diamonds_7500";
global.IAP_PurchaseID[7] = "diamonds_10000";
global.IAP_PurchaseID[8] = "subscription"
global.CurrentTokens = ds_list_create();
global.CurrentProducts = ds_list_create();
// Attempt to connect to the store
var _init = GPBilling_ConnectToStore();
if _init == gpb_error_unknown
    {
    show_debug_message("ERROR - Billing API Has Not Connected!");
    alarm[0] = room_speed * 10;
    }
