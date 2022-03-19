/// @description Insert description here
// You can write your code in this editor
num_process = global.stats.cost_manager.toaster;
number_array=[]
while (num_process >= 1){
    num_process = num_process / 1000;
    array_push(number_array,floor(frac(num_process) * 1000));
}
number_abbreviated = Number_Abbreviate(number_array)
