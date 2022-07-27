/// @description Insert description here
// You can write your code in this editor

if GPBilling_IsStoreConnected() && global.IAP_Enabled
    {
    var _chk = GPBilling_PurchaseProduct(global.IAP_PurchaseID[0]);
    // alternatively, for subscriptions:
    // var _chk = GPBilling_PurchaseSubscription(global.IAP_PurchaseID[0]);
    if _chk != gpb_no_error
        {
        // Purchase unavailable, add failsafe code if required
        }
    }
show_debug_message("i got clicked")
