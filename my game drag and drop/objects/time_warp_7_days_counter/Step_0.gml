if ((global.stats.random_vars.manager_strength*604800) > 1000000)
{
num_process = global.stats.random_vars.manager_strength*604800;
number_array=[]
while (num_process >= 1){
    num_process = num_process / 1000;
    array_push(number_array,floor(frac(num_process) * 1000));
}
number_abbreviated = Number_Abbreviate(number_array)
}
