/// @description Insert description here
// You can write your code in this editor
global.stats.random_vars.phone_number = o_phone_number.message4
global.stats.random_vars.email_adress = o_email_adress.message3 
global.stats.random_vars.age = o_age.message2
global.stats.random_vars.name_1 = o_name.message1
io_clear()
keyboard_virtual_show(kbv_type_default,kbv_returnkey_default,kbv_autocapitalize_none,true)
cursor = "|";
delay = 20;
age_cursor = 1
o_name.name_cursor = 0
o_phone_number.phone_cursor = 0
o_email_adress.email_address_cursor = 0
o_name.cursor="";
o_phone_number.cursor = "";
o_email_adress.cursor = "";
alarm[0] = delay;
