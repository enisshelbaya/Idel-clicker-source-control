/// @description Insert description here
// You can write your code in this editor

var _eventId = async_load[? "id"];
switch (_eventId)
    {
    case gpb_store_connect:
        // Store has connected so here you would generally add the products
        global.IAP_Enabled = false;
        GPBilling_AddProduct(global.IAP_PurchaseID[0]);
        GPBilling_AddProduct(global.IAP_PurchaseID[1]);
		GPBilling_AddProduct(global.IAP_PurchaseID[2]);
        GPBilling_AddProduct(global.IAP_PurchaseID[3]);
		GPBilling_AddProduct(global.IAP_PurchaseID[4]);
        GPBilling_AddProduct(global.IAP_PurchaseID[5]);
		GPBilling_AddProduct(global.IAP_PurchaseID[6]);
        GPBilling_AddProduct(global.IAP_PurchaseID[7]); 
        // Etc… for all products
        GPBilling_QueryProducts();
        // Here you would also add any subscription products
        // using the function GooglePlayBilling_AddSubscription().
		
        // However, you would NOT call the function GPBilling_QuerySubscriptions()
        // here if you have already queried products, but instead query
        // the subscription in the appropriate Async Event (see the "Querying
        // Products" section, below)
        break;
		
    case gpb_store_connect_failed:
        // Store has failed to connect, so try again periodically
        alarm[0] = room_speed * 10;
        break;
		
	case gpb_product_data_response:
    var _json = async_load[? "response_json"];
    var _map = json_decode(_json);
    if _map[? "success"] == true
        {
        var _plist = _map[? "skuDetails"];
        for (var i = 0; i < ds_list_size(_plist); ++i;)
            {
            // Any code required to store query information goes here
            }

        var _purchase_json = GPBilling_QueryPurchases(gpb_purchase_skutype_inapp);
        var _purchase_map = json_decode(_purchase_json);
        if _purchase_map[? "success"] == true
            {
            var _list = _purchase_map[? "purchases"];
            var _sz = ds_list_size(_list);
            for (var i = 0; i < _sz; ++i;)
                {
                var _map = _list[| i];
                if _map[? "purchaseState"] == 0
                    {
                    // Purchase has been made, so now get the product ID
                    // and unique "token" string to identify the purchase
                    var _pid = _map[? "productId"];
                    var _token = _map[? "purchaseToken"];
                    var _add = false;
                    // Check against existing purchase IDs
                    if _pid == global.IAP_PurchaseID[0]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[1]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[2]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[3]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[4]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[5]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[6]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
					if _pid == global.IAP_PurchaseID[7]
                        {
                        // It's a consumable purchase that hasn't been used yet
                        // so call the consume function on it:
                        GPBilling_ConsumeProduct(_token);
                        _add = true;
                        }
                   
                    if _add
                        {
                        // add all purchase IDs and tokens into the relevant
                        // DS lists so they can be confirmed later
                        ds_list_add(global.CurrentTokens, _token);
                        ds_list_add(global.CurrentProducts, _pid);
                        }
                    }
                }
            }
        ds_map_destroy(_purchase_map);
        global.IAP_Enabled = true;
        }
    ds_map_destroy(_map);
    break;	
	
	case gpb_iap_receipt:
    // Get the JSON object response string
    var _json = async_load[? "response_json"];
    var _map = json_decode(_json);
    // Check the response to see if it succeeded
    if _map[? "success"] == true
        {
        // Check the purchases key for any outstanding product purchases
        if ds_map_exists(_map, "purchases")
            {
            // Loop through the purchases list and parse each
            // entry to get the purchase data DS map
            var _plist = ds_map_find_value(_map, "purchases");
            for (var i = 0; i < ds_list_size(_plist);  ++i;)
                {
                var _pmap = _plist[| i];
                var _ptoken = _pmap[? "purchaseToken"];
                var _sig = GPBilling_Purchase_GetSignature(_ptoken);
                var _pjson = GPBilling_Purchase_GetOriginalJson(_ptoken);
                // Verify the purchase before consuming or acknowledging it
                if GPBilling_Purchase_VerifySignature(_pjson, _sig)
                    {
                    GPBilling_ConsumeProduct(_ptoken);
                    // If it is a durable product then you'd call
                    // GPBilling_AcknowledgePurchase();
                    ds_list_add(global.CurrentTokens, _ptoken);
                    ds_list_add(global.CurrentProducts, _pmap[? "productId"]);
                    }
                }
            }
        }
    ds_map_destroy(_map);
    break;
	case gpb_product_consume_response:
    // Get the JSON object response string
    var _json = async_load[? "response_json"];
    var _map = json_decode(_json);
    var _num = -1;
    // Get the purchase token for the product that has been purchased
    if ds_map_exists(_map, "purchaseToken") 
        {
        // compare the response purchase token against the list
        // of purchase token requests
        for (var i = 0; i < ds_list_size(global.CurrentTokens); ++i;)
            {
            // the response matches a token in the purchase check list
            if _map[? "purchaseToken"] == global.CurrentTokens[| i]
                {
                // Find out what product the token refers to
                if global.CurrentProducts[| i] == global.IAP_PurchaseID[0]
                    {
                   global.stats.random_vars.diamond_amount += 50;
				   
					
                    break;
                    }
                if global.CurrentProducts[| i] == global.IAP_PurchaseID[1]
                    {
                     global.stats.random_vars.diamond_amount += 100;
					
                    break;
                    }
				if global.CurrentProducts[| i] == global.IAP_PurchaseID[2]
                    {
                      global.stats.random_vars.diamond_amount += 500;
					
                    break;
                    }
				if global.CurrentProducts[| i] == global.IAP_PurchaseID[3]
                    {
                      global.stats.random_vars.diamond_amount += 1000;
					
                    break;
                    }
			    if global.CurrentProducts[| i] == global.IAP_PurchaseID[4]
                    {
                     global.stats.random_vars.diamond_amount += 1500;
					
                    break;
                    }
				if global.CurrentProducts[| i] == global.IAP_PurchaseID[5]
                    {
					 global.stats.random_vars.diamond_amount += 5000;
					
                    break;
                    }
				if global.CurrentProducts[| i] == global.IAP_PurchaseID[6]
                    {
                      global.stats.random_vars.diamond_amount += 7500;
					
                    break;
                    }
			    if global.CurrentProducts[| i] == global.IAP_PurchaseID[7]
                    {
                     global.stats.random_vars.diamond_amount += 10000;
					
                    break;
                    }
	
                }
            }
        // Remove the purchased product and its purchase token
        // from the appropriate check lists
        if _num > -1
            {
            ds_list_delete(global.CurrentProducts, _num);
            ds_list_delete(global.CurrentTokens, _num);
            }
        }
    else
        {
        // Parse the error response codes here
        // and react appropriately
        }
    ds_map_destroy(_map);
    break;
	
	case gpb_acknowledge_purchase_response:
    var _map = json_decode(async_load[? "response_json"]);
    var _num = -1;
    // Check the response code to see if it has been successfully acknowledged
    if _map[? "responseCode"] == 0
        {
        var _sz = ds_list_size(global.CurrentProducts);
        // Loop through the products on the consumed/purchase list
        // to find which one triggered this event
        for (var i = 0; i < _sz; ++i;)
            {
            if global.CurrentProducts[| i] == global.IAP_PurchaseID[8]
                {
               global.stats.random_vars.ads_on = 1;
                _num = i;
                break;
                }
            // Add further checks for other products here if required…
            }
        // Remove the purchased product and its purchase token
        // from the appropriate check lists
        if _num > -1
            {
            ds_list_delete(global.CurrentProducts, _num);
            ds_list_delete(global.CurrentTokens, _num);
            }
        }
    else
        {
        // Parse the other response codes here
        // and react appropriately
        }
    ds_map_destroy(_map);
    break;
    }
 