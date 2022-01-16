/// @description Insert description here
// You can write your code in this editor
// abbreviates currency amount
num_process = global.stats.random_vars.Currency_amount;
number_array=[]
while (num_process >= 1){
    num_process = num_process / 1000;
    array_push(number_array,floor(frac(num_process) * 1000));
}
number_abbreviated_1 = Number_Abbreviate(number_array)

// abbreviates click power

num_process = global.stats.random_vars.Clicker_Power;
number_array=[]
while (num_process >= 1)
{
    num_process = num_process / 1000;
    array_push(number_array,floor(frac(num_process) * 1000));
}
number_abbreviated_2 = Number_Abbreviate(number_array)

