/// @description Insert description here
// You can write your code in this editor
var data = 
{
	name:global.stats.random_vars.name_1,
	age:global.stats.random_vars.age,
	phone_number:global.stats.random_vars.phone_number,
	email_adress:global.stats.random_vars.email_adress,
	Clicker_Power: global.stats.random_vars.Clicker_Power,
	manager_strength: global.stats.random_vars.manager_strength,
	Currency_amount: floor(global.stats.random_vars.Currency_amount),
	Total_lifetime_cookies: floor(global.stats.random_vars.Total_lifetime_cookies),
	tap_production: global.stats.random_vars.tap_production,
	golden_boys_clicked: global.stats.random_vars.golden_boys_clicked,
	taps: global.stats.random_vars.taps,
	total_upgrades: global.stats.random_vars.total_upgrades,
	ads_watched: global.stats.random_vars.ads_watched
};
var jsondata = json_stringify(data)
FirebaseRealTime().Path(string(global.stats.random_vars.player_id)).Set(jsondata)



alarm[0]=room_speed*1