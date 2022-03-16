/// @description Insert description here
// You can write your code in this editor
FirebaseRemoteConfig_Initialize(0)
FirebaseRemoteConfig_FetchAndActivate()
if (FirebaseRemoteConfig_GetString("reset_game") = true && count < 30)
	{
			alarm[1] = room_speed*1
	}
// resets the game depending on the game config
if (FirebaseRemoteConfig_GetString("reset_game") = true && count > 29)
{
//random vars that need to be reset
global.stats.random_vars.click_power = 1 
global.stats.random_vars.manager_strength=0
global.stats.random_vars.Currency_amount=0
global.stats.random_vars.bar_taps=0
global.stats.random_vars.Total_lifetime_cookies=0
global.stats.random_vars.tap_production=0
global.stats.random_vars.golden_boys_clicked=0
global.stats.random_vars.taps=0
global.stats.random_vars.total_upgrades=0
global.stats.random_vars.ads_watched=0
//
global.stats.multiplyers.ten_x=0
global.stats.multiplyers.five_x=0
global.stats.multiplyers.four_x=0
global.stats.multiplyers.three_x=0
global.stats.multiplyers.two_x=0
// self explantory 
global.stats.click_power.click_power_cost=12500
global.stats.click_power.click_power_level=0
// level of the upgrades
global.stats.counter_manager.coffee=0
global.stats.counter_manager.spatula=0
global.stats.counter_manager.latel=0
global.stats.counter_manager.wok=0
global.stats.counter_manager.pans=0
global.stats.counter_manager.pots=0
global.stats.counter_manager.scissors=0
global.stats.counter_manager.chef_knife=0
global.stats.counter_manager.chopping_board=0
global.stats.counter_manager.knife_sharpener=0
global.stats.counter_manager.grater=0
global.stats.counter_manager.can_opener=0
global.stats.counter_manager.rolling_pin=0
global.stats.counter_manager.tongs=0
global.stats.counter_manager.stove=0
global.stats.counter_manager.food_processor=0
global.stats.counter_manager.oven=0
global.stats.counter_manager.countertop_mixer=0
// cost of the upgrades
global.stats.cost_manager.coffee=10
global.stats.cost_manager.spatula=100
global.stats.cost_manager.latel=1100
global.stats.cost_manager.wok=12000
global.stats.cost_manager.pans=130000
global.stats.cost_manager.pots=1400000
global.stats.cost_manager.scissors=20000000
global.stats.cost_manager.chef_knife=330000000
global.stats.cost_manager.chopping_board=5100000000
global.stats.cost_manager.knife_sharpener=75000000000
global.stats.cost_manager.grater=1000000000000
global.stats.cost_manager.can_opener=14000000000000
global.stats.cost_manager.rolling_pin=170000000000000
global.stats.cost_manager.tongs=2100000000000000
global.stats.cost_manager.stove=26000000000000000
global.stats.cost_manager.food_processor=310000000000000000
global.stats.cost_manager.oven=71000000000000000000
global.stats.cost_manager.countertop_mixer=12000000000000000000000
instance_destroy()
}
alarm[0] = room_speed*1

