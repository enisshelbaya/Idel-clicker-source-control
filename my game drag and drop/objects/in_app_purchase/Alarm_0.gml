/// @description Insert description here
// You can write your code in this editor
var _init = GPBilling_ConnectToStore();
if _init == gpb_error_unknown
    {
    show_debug_message("ERROR - Billing API Has Not Connected!");
    alarm[0] = room_speed * 10;
    }