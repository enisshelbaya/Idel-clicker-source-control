/// @description Insert description here
// You can write your code in this editor
if (global.game_has_never_ran=false)
{
var data = 
{
	name:0,
	age:0,
	location:0,
	phone_number:0,
	email_adress:0,
	Clicker_Power: global.stats.random_vars.Clicker_Power,
	manager_strength: global.stats.random_vars.manager_strength,
	Currency_amount: global.stats.random_vars.Currency_amount,
	Total_lifetime_cookies: global.stats.random_vars.Total_lifetime_cookies,
	tap_production: global.stats.random_vars.tap_production,
	golden_boys_clicked: global.stats.random_vars.golden_boys_clicked,
	taps: global.stats.random_vars.taps,
	total_upgrades: global.stats.random_vars.total_upgrades,
	ads_watched: global.stats.random_vars.ads_watched
};
var jsondata = json_stringify(data)
FirebaseRealTime().Path("v").Set(jsondata)
}
alarm[0]=room_speed*1